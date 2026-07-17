#include <Wire.h>
#include <math.h>

// Pins
#define SDA_PIN 8
#define SCL_PIN 9
#define BUZZER_PIN 5
#define ACK_BUTTON_PIN 3
#define HEART_RATE_PIN 0

// MPU6050
#define MPU_ADDR 0x68
#define REG_PWR_MGMT_1 0x6B
#define REG_WHO_AM_I 0x75
#define REG_ACCEL_XOUT_H 0x3B

// Thresholds
#define BPM_MIN 50
#define BPM_MAX 120
#define FREE_FALL_THRESHOLD 0.5
#define IMPACT_THRESHOLD 2.5

bool alarmActive = false;
bool mpuOk = false;

uint8_t readMPURegister(uint8_t reg) {
  Wire.beginTransmission(MPU_ADDR);
  Wire.write(reg);
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_ADDR, 1);

  if (Wire.available()) return Wire.read();
  return 0xFF;
}

int16_t readMPUWord(uint8_t reg) {
  Wire.beginTransmission(MPU_ADDR);
  Wire.write(reg);
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_ADDR, 2);

  if (Wire.available() >= 2) {
    return (Wire.read() << 8) | Wire.read();
  }

  return 0;
}

void writeMPURegister(uint8_t reg, uint8_t value) {
  Wire.beginTransmission(MPU_ADDR);
  Wire.write(reg);
  Wire.write(value);
  Wire.endTransmission();
}

void setup() {
  Serial.begin(115200);
  delay(500);

  pinMode(BUZZER_PIN, OUTPUT);
  pinMode(ACK_BUTTON_PIN, INPUT_PULLUP);
  noTone(BUZZER_PIN);

  Wire.begin(SDA_PIN, SCL_PIN);

  uint8_t who = readMPURegister(REG_WHO_AM_I);

  if (who == 0x68) {
    mpuOk = true;
    writeMPURegister(REG_PWR_MGMT_1, 0x00);
    delay(100);
  } else {
    mpuOk = false;
  }
}

void loop() {
  int rawHeart = analogRead(HEART_RATE_PIN);
  int bpm = map(rawHeart, 0, 4095, 40, 180);

  bool heartBad = (bpm < BPM_MIN || bpm > BPM_MAX);

  int16_t axRaw = readMPUWord(REG_ACCEL_XOUT_H);
  int16_t ayRaw = readMPUWord(REG_ACCEL_XOUT_H + 2);
  int16_t azRaw = readMPUWord(REG_ACCEL_XOUT_H + 4);

  float ax = axRaw / 16384.0;
  float ay = ayRaw / 16384.0;
  float az = azRaw / 16384.0;

  float accel = sqrt(ax * ax + ay * ay + az * az);

  bool freeFall = (accel < FREE_FALL_THRESHOLD);
  bool impact = (accel > IMPACT_THRESHOLD);
  bool fallDetected = (freeFall || impact);

  bool ackPressed = (digitalRead(ACK_BUTTON_PIN) == LOW);

  if (heartBad || fallDetected) {
    alarmActive = true;
  }

  if (ackPressed) {
    alarmActive = false;
  }

  if (alarmActive) {
    tone(BUZZER_PIN, 2000);
  } else {
    noTone(BUZZER_PIN);
  }

  // Serial Plotter output
  Serial.print("BPM:");
  Serial.print(bpm);

  Serial.print(" Accel_x50:");
  Serial.print(accel * 50);

  Serial.print(" MPU_OK:");
  Serial.print(mpuOk ? 200 : 0);

  Serial.print(" HeartBad:");
  Serial.print(heartBad ? 180 : 0);

  Serial.print(" FreeFall:");
  Serial.print(freeFall ? 160 : 0);

  Serial.print(" Impact:");
  Serial.print(impact ? 140 : 0);

  Serial.print(" Fall:");
  Serial.print(fallDetected ? 120 : 0);

  Serial.print(" ACK:");
  Serial.print(ackPressed ? 100 : 0);

  Serial.print(" Alarm:");
  Serial.println(alarmActive ? 80 : 0);

  delay(300);
}