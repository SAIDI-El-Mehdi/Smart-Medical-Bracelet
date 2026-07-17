import 'dart:async';
import 'dart:math';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:telephony/telephony.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initialize();
  runApp(const BraceletApp());
}

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
    );

    await _notifications.initialize(
      settings: settings,
    );

    final AndroidFlutterLocalNotificationsPlugin? androidPlugin =
        _notifications.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    await androidPlugin?.requestNotificationsPermission();
  }

  static Future<void> showAlertNotification({
    required String title,
    required String body,
  }) async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'bracelet_alerts_channel',
      'Alertes du bracelet',
      channelDescription:
          'Notifications locales pour les alertes du bracelet connecté.',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
    );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
    );

    await _notifications.show(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      title: title,
      body: body,
      notificationDetails: details,
    );
  }
}

class BraceletApp extends StatelessWidget {
  const BraceletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bracelet connecté',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class AlertEvent {
  final String type;
  final String message;
  final DateTime time;
  final double? latitude;
  final double? longitude;

  AlertEvent({
    required this.type,
    required this.message,
    required this.time,
    this.latitude,
    this.longitude,
  });

  bool get hasLocation => latitude != null && longitude != null;
}

class SensorReading {
  final int bpm;
  final double ax;
  final double ay;
  final double az;
  final double accelerationMagnitude;
  final bool fallDetected;
  final DateTime time;

  SensorReading({
    required this.bpm,
    required this.ax,
    required this.ay,
    required this.az,
    required this.accelerationMagnitude,
    required this.fallDetected,
    required this.time,
  });
}

class EmergencyContact {
  final String name;
  final String phone;
  final bool isPrimary;

  EmergencyContact({
    required this.name,
    required this.phone,
    this.isPrimary = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'isPrimary': isPrimary,
    };
  }

  factory EmergencyContact.fromJson(Map<String, dynamic> json) {
    return EmergencyContact(
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      isPrimary: json['isPrimary'] ?? false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Random random = Random();
  final Telephony telephony = Telephony.instance;

  Timer? timer;

  int selectedIndex = 0;

  int bpm = 78;
  int bpmMin = 50;
  int bpmMax = 120;

  double ax = 0.02;
  double ay = 0.01;
  double az = 1.00;
  double accelerationMagnitude = 1.00;

  bool fallDetected = false;
  bool isConnected = false;
  bool simulationRunning = false;

  bool highBpmAlertActive = false;
  bool lowBpmAlertActive = false;
  bool fallAlertActive = false;

  bool alertAcknowledged = true;
  String activeAlertType = '';
  DateTime? lastNotificationTime;

  String status = 'Déconnecté';
  String lastUpdate = '--:--:--';

  // Si cette option est activée :
  // - le SMS SOS automatique est envoyé à tous les contacts enregistrés ;
  // - l'appel direct est lancé uniquement vers le contact principal.
  bool automaticSosEnabled = true;

  final List<EmergencyContact> emergencyContacts = [];

  final TextEditingController contactNameController = TextEditingController();
  final TextEditingController contactPhoneController = TextEditingController();

  final List<AlertEvent> alerts = [];
  final List<SensorReading> readings = [];

  @override
  void initState() {
    super.initState();
    _loadEmergencyContacts();
  }

  @override
  void dispose() {
    timer?.cancel();
    contactNameController.dispose();
    contactPhoneController.dispose();
    super.dispose();
  }

  void _startSimulation() {
    if (simulationRunning) return;

    setState(() {
      simulationRunning = true;
      isConnected = true;
      status = 'Normal';
      lastUpdate = _formatTime(DateTime.now());
    });

    timer = Timer.periodic(const Duration(seconds: 2), (_) {
      _receiveSimulatedData();
    });
  }

  void _stopSimulation() {
    timer?.cancel();

    setState(() {
      simulationRunning = false;
      isConnected = false;
      status = 'Déconnecté';
      fallDetected = false;
    });
  }

  void _receiveSimulatedData() {
    final int scenario = random.nextInt(100);
    bool generatedFall = false;

    if (scenario < 72) {
      bpm = 65 + random.nextInt(28);
      _generateNormalMovement();
    } else if (scenario < 82) {
      bpm = 121 + random.nextInt(18);
      _generateNormalMovement();
    } else if (scenario < 89) {
      bpm = 42 + random.nextInt(8);
      _generateNormalMovement();
    } else if (scenario < 96) {
      bpm = 75 + random.nextInt(20);
      _generateFallMovement();
      generatedFall = true;
    } else {
      bpm = 125 + random.nextInt(20);
      _generateFallMovement();
      generatedFall = true;
    }

    setState(() {
      fallDetected = generatedFall;
      accelerationMagnitude = sqrt(ax * ax + ay * ay + az * az);
      lastUpdate = _formatTime(DateTime.now());

      readings.insert(
        0,
        SensorReading(
          bpm: bpm,
          ax: ax,
          ay: ay,
          az: az,
          accelerationMagnitude: accelerationMagnitude,
          fallDetected: fallDetected,
          time: DateTime.now(),
        ),
      );

      if (readings.length > 40) {
        readings.removeLast();
      }
    });

    _analyzeCurrentState();
  }

  void _generateNormalMovement() {
    ax = -0.15 + random.nextDouble() * 0.30;
    ay = -0.15 + random.nextDouble() * 0.30;
    az = 0.85 + random.nextDouble() * 0.30;
  }

  void _generateFallMovement() {
    ax = 1.8 + random.nextDouble() * 1.2;
    ay = 1.2 + random.nextDouble() * 1.0;
    az = 2.0 + random.nextDouble() * 1.5;
  }

  Future<void> _analyzeCurrentState() async {
    if (!isConnected) {
      setState(() {
        status = 'Déconnecté';
      });
      return;
    }

    final bool bpmHigh = bpm > bpmMax;
    final bool bpmLow = bpm < bpmMin;
    final bool movementFall = fallDetected || accelerationMagnitude > 3.0;

    if (movementFall && (bpmHigh || bpmLow)) {
      if (!fallAlertActive) {
        await _addAlert(
          type: 'Alerte critique',
          message:
              'Chute détectée avec anomalie cardiaque : $bpm BPM, accélération ${accelerationMagnitude.toStringAsFixed(2)} g.',
          includeLocation: true,
        );
      }
      fallAlertActive = true;
      highBpmAlertActive = bpmHigh;
      lowBpmAlertActive = bpmLow;
      return;
    }

    if (movementFall) {
      if (!fallAlertActive) {
        await _addAlert(
          type: 'Chute détectée',
          message:
              'Mouvement compatible avec une chute : accélération ${accelerationMagnitude.toStringAsFixed(2)} g.',
          includeLocation: true,
        );
      }
      fallAlertActive = true;
      return;
    }

    if (bpmHigh) {
      if (!highBpmAlertActive) {
        await _addAlert(
          type: 'BPM élevé',
          message: 'Rythme cardiaque élevé détecté : $bpm BPM.',
          includeLocation: false,
        );
      }
      highBpmAlertActive = true;
      return;
    }

    if (bpmLow) {
      if (!lowBpmAlertActive) {
        await _addAlert(
          type: 'BPM faible',
          message: 'Rythme cardiaque faible détecté : $bpm BPM.',
          includeLocation: false,
        );
      }
      lowBpmAlertActive = true;
      return;
    }

    if (alertAcknowledged) {
      setState(() {
        status = 'Normal';
      });
    }

    highBpmAlertActive = false;
    lowBpmAlertActive = false;
    fallAlertActive = false;
  }

  Future<Position?> _getCurrentLocation() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return null;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return null;
    }

    try {
      return await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 8),
        ),
      );
    } catch (_) {
      return null;
    }
  }

  Future<void> _simulateFall() async {
    setState(() {
      bpm = 82;
      _generateFallMovement();
      accelerationMagnitude = sqrt(ax * ax + ay * ay + az * az);
      fallDetected = true;
      isConnected = true;
      lastUpdate = _formatTime(DateTime.now());

      readings.insert(
        0,
        SensorReading(
          bpm: bpm,
          ax: ax,
          ay: ay,
          az: az,
          accelerationMagnitude: accelerationMagnitude,
          fallDetected: true,
          time: DateTime.now(),
        ),
      );
    });

    await _addAlert(
      type: 'Chute détectée',
      message:
          'Chute simulée : accélération ${accelerationMagnitude.toStringAsFixed(2)} g.',
      includeLocation: true,
    );
  }

  Future<void> _simulateHighBpm() async {
    setState(() {
      bpm = 135;
      fallDetected = false;
      isConnected = true;
      _generateNormalMovement();
      accelerationMagnitude = sqrt(ax * ax + ay * ay + az * az);
      lastUpdate = _formatTime(DateTime.now());

      readings.insert(
        0,
        SensorReading(
          bpm: bpm,
          ax: ax,
          ay: ay,
          az: az,
          accelerationMagnitude: accelerationMagnitude,
          fallDetected: false,
          time: DateTime.now(),
        ),
      );
    });

    await _addAlert(
      type: 'BPM élevé',
      message: 'Rythme cardiaque élevé détecté : $bpm BPM.',
      includeLocation: false,
    );
  }

  Future<void> _addAlert({
    required String type,
    required String message,
    required bool includeLocation,
  }) async {
    final DateTime now = DateTime.now();

    if (!alertAcknowledged && activeAlertType == type) {
      return;
    }

    if (lastNotificationTime != null &&
        now.difference(lastNotificationTime!).inSeconds < 10) {
      return;
    }

    alertAcknowledged = false;
    activeAlertType = type;
    lastNotificationTime = now;

    double? latitude;
    double? longitude;
    String finalMessage = message;

    if (includeLocation) {
      final Position? position = await _getCurrentLocation();

      if (position != null) {
        latitude = position.latitude;
        longitude = position.longitude;

        finalMessage =
            '$message Localisation : ${latitude.toStringAsFixed(6)}, ${longitude.toStringAsFixed(6)}.';
      } else {
        finalMessage =
            '$message Localisation non disponible ou permission refusée.';
      }
    }

    final AlertEvent createdAlert = AlertEvent(
      type: type,
      message: finalMessage,
      time: DateTime.now(),
      latitude: latitude,
      longitude: longitude,
    );

    setState(() {
      status = 'Danger';

      alerts.insert(0, createdAlert);

      if (alerts.length > 40) {
        alerts.removeLast();
      }
    });

    await NotificationService.showAlertNotification(
      title: type,
      body: finalMessage,
    );

    if (automaticSosEnabled &&
        (type == 'Chute détectée' || type == 'Alerte critique')) {
      await _sendAutomaticSosSms(createdAlert);
      await _callEmergencyContactDirectly();
    }
  }

  void _acknowledgeAlert() {
    setState(() {
      alertAcknowledged = true;
      activeAlertType = '';
      status = isConnected ? 'Normal' : 'Déconnecté';
      fallDetected = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Alerte acquittée par l’utilisateur.'),
      ),
    );
  }

  void _resetState() {
    setState(() {
      bpm = 78;
      ax = 0.02;
      ay = 0.01;
      az = 1.00;
      accelerationMagnitude = 1.00;
      fallDetected = false;
      status = isConnected ? 'Normal' : 'Déconnecté';
      lastUpdate = _formatTime(DateTime.now());

      readings.clear();
      alerts.clear();
    });

    highBpmAlertActive = false;
    lowBpmAlertActive = false;
    fallAlertActive = false;
    alertAcknowledged = true;
    activeAlertType = '';
    lastNotificationTime = null;
  }

  Future<void> _saveEmergencyContacts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final List<String> contactsJson = emergencyContacts
        .map((EmergencyContact contact) => jsonEncode(contact.toJson()))
        .toList();

    await prefs.setStringList('emergency_contacts', contactsJson);
  }

  Future<void> _loadEmergencyContacts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final List<String>? contactsJson = prefs.getStringList(
      'emergency_contacts',
    );

    if (contactsJson == null) return;

    final List<EmergencyContact> loadedContacts = [];

    for (final String item in contactsJson) {
      try {
        final Map<String, dynamic> json =
            jsonDecode(item) as Map<String, dynamic>;

        final EmergencyContact contact = EmergencyContact.fromJson(json);

        if (contact.name.trim().isNotEmpty &&
            _isValidPhoneNumber(contact.phone.trim())) {
          loadedContacts.add(contact);
        }
      } catch (_) {
        // Ignore corrupted saved contact.
      }
    }

    if (loadedContacts.isNotEmpty &&
        !loadedContacts.any((EmergencyContact contact) => contact.isPrimary)) {
      final EmergencyContact first = loadedContacts.first;
      loadedContacts[0] = EmergencyContact(
        name: first.name,
        phone: first.phone,
        isPrimary: true,
      );
    }

    setState(() {
      emergencyContacts.clear();
      emergencyContacts.addAll(loadedContacts);
    });
  }

  void _addEmergencyContact() {
    final String name = contactNameController.text.trim();
    final String phone = contactPhoneController.text.trim();

    if (name.isEmpty || !_isValidPhoneNumber(phone)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nom ou numéro invalide.'),
        ),
      );
      return;
    }

    setState(() {
      emergencyContacts.add(
        EmergencyContact(
          name: name,
          phone: phone,
          isPrimary: emergencyContacts.isEmpty,
        ),
      );

      contactNameController.clear();
      contactPhoneController.clear();
    });

    _saveEmergencyContacts();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Contact d’urgence ajouté.'),
      ),
    );
  }

  void _deleteEmergencyContact(int index) {
    setState(() {
      emergencyContacts.removeAt(index);

      if (emergencyContacts.isNotEmpty &&
          !emergencyContacts.any((contact) => contact.isPrimary)) {
        final EmergencyContact first = emergencyContacts.first;
        emergencyContacts[0] = EmergencyContact(
          name: first.name,
          phone: first.phone,
          isPrimary: true,
        );
      }
    });

    _saveEmergencyContacts();
  }

  void _setPrimaryContact(int index) {
    setState(() {
      for (int i = 0; i < emergencyContacts.length; i++) {
        emergencyContacts[i] = EmergencyContact(
          name: emergencyContacts[i].name,
          phone: emergencyContacts[i].phone,
          isPrimary: i == index,
        );
      }
    });

    _saveEmergencyContacts();
  }

  EmergencyContact? _primaryContact() {
    if (emergencyContacts.isEmpty) return null;

    return emergencyContacts.firstWhere(
      (contact) => contact.isPrimary,
      orElse: () => emergencyContacts.first,
    );
  }

  Future<void> _sendSosSms(AlertEvent alert) async {
    final EmergencyContact? contact = _primaryContact();

    if (contact == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Aucun contact d’urgence disponible.'),
        ),
      );
      return;
    }

    final String phone = contact.phone.trim();

    if (!_isValidPhoneNumber(phone)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Numéro du contact principal non valide.'),
        ),
      );
      return;
    }

    final String locationText = alert.hasLocation
        ? ' Localisation: https://maps.google.com/?q=${alert.latitude},${alert.longitude}'
        : '';

    final String message =
        'SOS Bracelet: ${alert.type}. ${alert.message} Heure: ${_formatTime(alert.time)}.$locationText';

    final Uri smsUri = Uri.parse(
      'sms:$phone?body=${Uri.encodeComponent(message)}',
    );

    try {
      await launchUrl(
        smsUri,
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Impossible d’ouvrir l’application SMS. Vérifie qu’une application SMS est installée.',
          ),
        ),
      );
    }
  }

  Future<void> _sendAutomaticSosSms(AlertEvent alert) async {
    if (emergencyContacts.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Aucun contact d’urgence disponible.'),
        ),
      );
      return;
    }

    final bool? permissionsGranted =
        await telephony.requestPhoneAndSmsPermissions;

    if (permissionsGranted != true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Permission SMS refusée.'),
        ),
      );
      return;
    }

    final String locationText = alert.hasLocation
        ? ' Localisation: https://maps.google.com/?q=${alert.latitude},${alert.longitude}'
        : '';

    final String message =
        'SOS Bracelet: ${alert.type}. ${alert.message} Heure: ${_formatTime(alert.time)}.$locationText';

    int sentCount = 0;

    for (final EmergencyContact contact in emergencyContacts) {
      final String phone = contact.phone.trim();

      if (_isValidPhoneNumber(phone)) {
        try {
          await telephony.sendSms(
            to: phone,
            message: message,
          );
          sentCount++;
        } catch (_) {
          // On ignore l'échec d'un contact pour continuer avec les suivants.
        }
      }
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('SMS SOS envoyé à $sentCount contact(s).'),
      ),
    );
  }

  Future<void> _callEmergencyContactDirectly() async {
    final EmergencyContact? contact = _primaryContact();

    if (contact == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Aucun contact principal disponible.'),
        ),
      );
      return;
    }

    final String phone = contact.phone.trim();

    if (!_isValidPhoneNumber(phone)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Appel automatique annulé : numéro SOS non valide.'),
        ),
      );
      return;
    }

    final PermissionStatus phonePermission = await Permission.phone.request();

    if (!phonePermission.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Permission d’appel refusée.'),
        ),
      );
      return;
    }

    try {
      await FlutterPhoneDirectCaller.callNumber(phone);
    } catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Impossible de lancer l’appel SOS.'),
        ),
      );
    }
  }

  bool _isValidPhoneNumber(String phone) {
    if (phone.isEmpty) return false;
    if (phone.contains('XX')) return false;
    if (phone.length < 8) return false;
    return true;
  }

  void _updateBpmMin(double value) {
    setState(() {
      bpmMin = value.round();
    });
  }

  void _updateBpmMax(double value) {
    setState(() {
      bpmMax = value.round();
    });
  }

  Color _statusColor() {
    if (status == 'Danger') return Colors.red;
    if (status == 'Déconnecté') return Colors.orange;
    return Colors.green;
  }

  String _formatTime(DateTime time) {
    final String h = time.hour.toString().padLeft(2, '0');
    final String m = time.minute.toString().padLeft(2, '0');
    final String s = time.second.toString().padLeft(2, '0');
    return '$h:$m:$s';
  }

  List<double> _bpmValues() {
    return readings.reversed.map((r) => r.bpm.toDouble()).toList();
  }

  List<double> _accelerationValues() {
    return readings.reversed.map((r) => r.accelerationMagnitude).toList();
  }

  double _riskScore() {
    if (readings.length < 5) return 0.0;

    final List<SensorReading> recentReadings = readings.take(10).toList();

    final List<int> bpmValues = recentReadings.map((r) => r.bpm).toList();
    final List<double> accValues =
        recentReadings.map((r) => r.accelerationMagnitude).toList();

    final double avgBpm =
        bpmValues.reduce((a, b) => a + b) / bpmValues.length;

    final int maxBpm = bpmValues.reduce(max);
    final int minBpm = bpmValues.reduce(min);

    final double avgAcc =
        accValues.reduce((a, b) => a + b) / accValues.length;

    final double maxAcc = accValues.reduce(max);

    final int bpmAnomalyCount = bpmValues
        .where((value) => value > bpmMax || value < bpmMin)
        .length;

    final int fallCount = recentReadings
        .where((reading) =>
            reading.fallDetected || reading.accelerationMagnitude > 3.0)
        .length;

    double score = 0.0;

    if (avgBpm > bpmMax || avgBpm < bpmMin) {
      score += 0.15;
    }

    if (maxBpm > bpmMax + 10) {
      score += 0.10;
    }

    if (minBpm < bpmMin - 5) {
      score += 0.10;
    }

    if (bpmAnomalyCount >= 2) {
      score += 0.10;
    }

    if (bpmAnomalyCount >= 4) {
      score += 0.10;
    }

    if (avgAcc > 1.7) {
      score += 0.10;
    }

    if (maxAcc > 3.0) {
      score += 0.15;
    }

    if (maxAcc > 4.0) {
      score += 0.10;
    }

    if (fallCount >= 1) {
      score += 0.20;
    }

    if (fallCount >= 2) {
      score += 0.10;
    }

    return score.clamp(0.0, 1.0);
  }

  Widget _currentPage() {
    switch (selectedIndex) {
      case 0:
        return _dashboardPage();
      case 1:
        return _historyPage();
      case 2:
        return _contactPage();
      case 3:
        return _settingsPage();
      case 4:
        return _riskPage();
      default:
        return _dashboardPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bracelet de surveillance'),
        centerTitle: true,
      ),
      body: _currentPage(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.history),
            label: 'Historique',
          ),
          NavigationDestination(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Réglages',
          ),
          NavigationDestination(
            icon: Icon(Icons.psychology),
            label: 'Risque',
          ),
        ],
      ),
    );
  }

  Widget _dashboardPage() {
    final String connectionText = isConnected ? 'Connecté' : 'Déconnecté';
    final EmergencyContact? primary = _primaryContact();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  const Text(
                    'Tableau de bord',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    '$bpm BPM',
                    style: const TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    fallDetected ? 'Chute détectée' : 'Aucune chute',
                    style: const TextStyle(fontSize: 17),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Accélération : ${accelerationMagnitude.toStringAsFixed(2)} g',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: _statusColor().withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: _statusColor()),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        color: _statusColor(),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _infoCard(
                title: 'Connexion',
                value: connectionText,
                icon: Icons.bluetooth_connected,
                color: isConnected ? Colors.green : Colors.orange,
              ),
              const SizedBox(width: 8),
              _infoCard(
                title: 'Dernière mesure',
                value: lastUpdate,
                icon: Icons.access_time,
                color: Colors.blue,
              ),
              const SizedBox(width: 8),
              _infoCard(
                title: 'Alertes',
                value: alerts.length.toString(),
                icon: Icons.warning,
                color: alerts.isEmpty ? Colors.grey : Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _infoCard(
                title: 'Acc. X',
                value: ax.toStringAsFixed(2),
                icon: Icons.swap_horiz,
                color: Colors.indigo,
              ),
              const SizedBox(width: 8),
              _infoCard(
                title: 'Acc. Y',
                value: ay.toStringAsFixed(2),
                icon: Icons.swap_vert,
                color: Colors.indigo,
              ),
              const SizedBox(width: 8),
              _infoCard(
                title: 'Acc. Z',
                value: az.toStringAsFixed(2),
                icon: Icons.compress,
                color: Colors.indigo,
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: simulationRunning ? _stopSimulation : _startSimulation,
              child: Text(
                simulationRunning
                    ? 'Arrêter simulation'
                    : 'Démarrer simulation',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: _simulateHighBpm,
                  child: const Text('Simuler BPM élevé'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: _simulateFall,
                  child: const Text('Simuler chute'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: _resetState,
              child: const Text('Réinitialiser'),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: status == 'Danger' ? _acknowledgeAlert : null,
              icon: const Icon(Icons.check_circle),
              label: const Text('Acquitter l’alerte'),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.contact_phone),
              title: Text(primary?.name ?? 'Aucun contact'),
              subtitle: Text(primary?.phone ?? 'Ajoutez un contact d’urgence'),
              trailing: Text('${emergencyContacts.length} contact(s)'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: SwitchListTile(
              title: const Text('SOS automatique'),
              subtitle: const Text(
                'SMS à tous les contacts et appel direct vers le contact principal.',
              ),
              value: automaticSosEnabled,
              onChanged: (bool value) {
                setState(() {
                  automaticSosEnabled = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _historyPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _chartCard(
            title: 'Courbe du rythme cardiaque',
            values: _bpmValues(),
            minY: 30,
            maxY: 160,
            unit: 'BPM',
          ),
          const SizedBox(height: 10),
          _chartCard(
            title: 'Courbe de la magnitude d’accélération',
            values: _accelerationValues(),
            minY: 0,
            maxY: 5,
            unit: 'g',
          ),
          const SizedBox(height: 12),
          const Text(
            'Historique des alertes',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          alerts.isEmpty
              ? const Padding(
                  padding: EdgeInsets.all(18),
                  child: Text('Aucune alerte enregistrée.'),
                )
              : ListView.builder(
                  itemCount: alerts.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final AlertEvent alert = alerts[index];

                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.warning, color: Colors.red),
                        title: Text(alert.type),
                        subtitle: Text(alert.message),
                        trailing: IconButton(
                          icon: const Icon(Icons.sms),
                          onPressed: () => _sendSosSms(alert),
                        ),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }

  Widget _contactPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contacts d’urgence',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Cette page permet d’ajouter plusieurs personnes proches à prévenir en cas de chute ou d’alerte critique. Le contact principal est utilisé pour l’appel direct.',
          ),
          const SizedBox(height: 16),
          TextField(
            controller: contactNameController,
            decoration: const InputDecoration(
              labelText: 'Nom du contact',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: contactPhoneController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Numéro de téléphone',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _addEmergencyContact,
              icon: const Icon(Icons.add),
              label: const Text('Ajouter le contact'),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: const Icon(Icons.sms),
              label: const Text('Préparer SMS SOS de test'),
              onPressed: () {
                final AlertEvent testAlert = AlertEvent(
                  type: 'Test SOS',
                  message:
                      'Message de test depuis le prototype de surveillance. Aucune urgence réelle.',
                  time: DateTime.now(),
                );

                _sendSosSms(testAlert);
              },
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: const Icon(Icons.call),
              label: const Text('Appel direct vers le contact principal'),
              onPressed: _callEmergencyContactDirectly,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Liste des contacts',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          emergencyContacts.isEmpty
              ? const Card(
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text('Aucun contact enregistré'),
                    subtitle: Text(
                      'Ajoutez au moins un contact pour utiliser la fonction SOS.',
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: emergencyContacts.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final EmergencyContact contact = emergencyContacts[index];

                    return Card(
                      child: ListTile(
                        leading: Icon(
                          contact.isPrimary
                              ? Icons.star
                              : Icons.contact_phone,
                          color: contact.isPrimary
                              ? Colors.orange
                              : Colors.blueGrey,
                        ),
                        title: Text(contact.name),
                        subtitle: Text(
                          contact.isPrimary
                              ? '${contact.phone}\nContact principal'
                              : contact.phone,
                        ),
                        isThreeLine: contact.isPrimary,
                        trailing: Wrap(
                          spacing: 4,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => _setPrimaryContact(index),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => _deleteEmergencyContact(index),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
          const SizedBox(height: 12),
          const Card(
            child: ListTile(
              leading: Icon(Icons.warning_amber),
              title: Text('Remarque importante'),
              subtitle: Text(
                'En cas de SOS automatique, le SMS peut être envoyé à plusieurs contacts. L’appel direct reste limité au contact principal afin d’éviter les appels multiples.',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingsPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Paramètres',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Seuil BPM faible : $bpmMin BPM'),
                  Slider(
                    min: 35,
                    max: 80,
                    divisions: 45,
                    value: bpmMin.toDouble(),
                    onChanged: _updateBpmMin,
                  ),
                  Text('Seuil BPM élevé : $bpmMax BPM'),
                  Slider(
                    min: 90,
                    max: 170,
                    divisions: 80,
                    value: bpmMax.toDouble(),
                    onChanged: _updateBpmMax,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('Limite du prototype'),
              subtitle: Text(
                'Ces seuils servent à tester la logique d’alerte. Ils ne remplacent pas un avis médical.',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _riskPage() {
    final double score = _riskScore();
    final String level = score < 0.3
        ? 'Faible'
        : score < 0.7
            ? 'Moyen'
            : 'Élevé';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Analyse de risque future',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Cette page représente une préparation à la partie Machine Learning. Le score affiché est expérimental et basé sur des règles simples, pas sur un modèle médical validé.',
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  const Text(
                    'Score expérimental',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  LinearProgressIndicator(value: score),
                  const SizedBox(height: 12),
                  Text(
                    'Niveau estimé : $level',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text('Score : ${(score * 100).toStringAsFixed(0)} %'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Card(
            child: ListTile(
              leading: Icon(Icons.warning_amber),
              title: Text('Interprétation'),
              subtitle: Text(
                'Ce résultat sert uniquement à préparer une future analyse de données. Il ne constitue pas une prédiction médicale.',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Expanded(
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Icon(icon, color: color, size: 26),
              const SizedBox(height: 6),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(value, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chartCard({
    required String title,
    required List<double> values,
    required double minY,
    required double maxY,
    required String unit,
  }) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: values.length < 2
                  ? const Center(
                      child: Text(
                        'Données insuffisantes pour afficher la courbe.',
                      ),
                    )
                  : CustomPaint(
                      painter: LineChartPainter(
                        values: values,
                        minY: minY,
                        maxY: maxY,
                      ),
                    ),
            ),
            const SizedBox(height: 4),
            Text(
              'Dernière valeur : ${values.isEmpty ? "--" : values.last.toStringAsFixed(1)} $unit',
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  final List<double> values;
  final double minY;
  final double maxY;

  LineChartPainter({
    required this.values,
    required this.minY,
    required this.maxY,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint axisPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    final Paint linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    final Paint pointPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, size.height),
      axisPaint,
    );

    canvas.drawLine(
      const Offset(0, 0),
      Offset(0, size.height),
      axisPaint,
    );

    if (values.length < 2) return;

    final Path path = Path();

    for (int i = 0; i < values.length; i++) {
      final double x = (i / (values.length - 1)) * size.width;

      final double normalizedY =
          ((values[i] - minY) / (maxY - minY)).clamp(0.0, 1.0);

      final double y = size.height - normalizedY * size.height;

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }

      canvas.drawCircle(Offset(x, y), 3, pointPaint);
    }

    canvas.drawPath(path, linePaint);
  }

  @override
  bool shouldRepaint(covariant LineChartPainter oldDelegate) {
    return oldDelegate.values != values;
  }
}
