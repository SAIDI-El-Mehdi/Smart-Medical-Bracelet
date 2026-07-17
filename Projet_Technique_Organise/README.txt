Projet Technique - Bracelet Intelligent

Description generale
--------------------
Cette archive regroupe les elements principaux du projet technique relatif a la conception d'un bracelet intelligent de surveillance cardiaque et de detection de chute. Elle contient les livrables academiques, les fichiers de conception electronique, les codes sources, les simulations, la modelisation SysML, la conception 3D CAD, l'application mobile Flutter, ainsi que les documents de support.

Organisation du projet
----------------------
01_Rapport/
    Contient le rapport academique du projet et les documents rediges lies a la presentation technique du travail.

02_Presentation/
    Contient la presentation du projet destinee a l'expose oral ou a la soutenance.

03_Code_Source/
    Contient les codes sources utilises dans le projet, notamment les programmes embarques ou les fichiers de developpement logiciel.

04_Simulation/
    Contient les fichiers de simulation utilises pour tester le fonctionnement du systeme avant realisation ou integration.

05_PCB_Eagle/
    Contient les fichiers Autodesk Eagle relatifs a la conception electronique de la carte, ainsi que les versions PDF du schema electrique et du PCB.
    Fichiers principaux :
        - Schema_Electrique.pdf
        - PCB_Carte_Principale.pdf
        - Schema_Electronique_Bracelet.sch
        - PCB_Carte_Bracelet.brd
        - Configuration_Eagle.epf
        - CAM_Job_Bracelet_02.job
        - CAM_Job_Bracelet_03.job
        - CAM_Job_Bracelet_04.job
        - CAM_Job_Bracelet_05.job
        - Projet_Eagle_Bracelet_02.pro
        - Projet_Eagle_Bracelet_03.pro
        - Projet_Eagle_Bracelet_04.pro
        - Projet_Eagle_Bracelet_05.pro

06_Documentation/
    Contient les documents techniques, notices, references ou ressources utiles a la comprehension du projet.

07_Archives_ou_Doublons/
    Contient les anciens fichiers, sauvegardes, versions intermediaires ou elements conserves comme archives afin de ne rien supprimer du projet initial.

08_Conception_3D_CAD/
    Contient les fichiers de conception mecanique et de modelisation 3D, notamment les elements CAD du boitier ou du bracelet.

09_Modelisation_SysML/
    Contient les fichiers de modelisation systeme, diagrammes SysML ou elements d'analyse fonctionnelle du projet.

10_Application_Mobile_Flutter/
    Contient le projet de l'application mobile Flutter associee au bracelet intelligent.
    Ce dossier regroupe principalement :
        - lib/
        - assets/ si present
        - android/
        - ios/ si present
        - web/ si present
        - pubspec.yaml
        - pubspec.lock
        - analysis_options.yaml

Fichiers principaux
-------------------
- Rapport du projet : disponible dans 01_Rapport/
- Presentation du projet : disponible dans 02_Presentation/
- Code source embarque : disponible dans 03_Code_Source/
- Simulation : disponible dans 04_Simulation/
- Schema electrique PDF : 05_PCB_Eagle/Schema_Electrique.pdf
- PCB PDF : 05_PCB_Eagle/PCB_Carte_Principale.pdf
- Schema Eagle : 05_PCB_Eagle/Schema_Electronique_Bracelet.sch
- Carte PCB Eagle : 05_PCB_Eagle/PCB_Carte_Bracelet.brd
- Conception 3D : disponible dans 08_Conception_3D_CAD/
- Modelisation SysML : disponible dans 09_Modelisation_SysML/
- Application mobile Flutter : disponible dans 10_Application_Mobile_Flutter/

Remarques
---------
- Les fichiers originaux du projet ont ete conserves dans leurs dossiers respectifs.
- Les fichiers de sauvegarde, versions intermediaires ou doublons sont regroupes dans 07_Archives_ou_Doublons/.
- Le schema electrique et le PCB sont regroupes dans le meme dossier 05_PCB_Eagle/ afin de garder ensemble tous les elements de conception electronique.
- L'application Flutter est placee dans 10_Application_Mobile_Flutter/ pour separer clairement la partie mobile du reste du projet technique.
- Les fichiers generes automatiquement par Flutter ou Gradle, comme build/, .dart_tool/ et .gradle/, ne sont pas necessaires pour la presentation academique et peuvent etre regeneres avec les commandes flutter pub get et flutter run.
- Les noms des dossiers sont numerotes pour faciliter la consultation et la presentation academique du projet.
- Aucun contenu interne des fichiers techniques n'a ete modifie.
