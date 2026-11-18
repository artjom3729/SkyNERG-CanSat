#include "CanSatNeXT.h"
#include "Wire.h"
#include "SparkFun_SCD4x_Arduino_Library.h"

SCD4x scd41;

void setup() {
  Serial.begin(115200);
  Wire.begin();

  CanSatInit(213);

  if(scd41.begin() != 0) {
    Serial.println("SCD41 sensor initialization failed!");
  }
}

void loop() {

  float temperature = readTemperature();

  float pressure = readPressure();

  float ax, ay, az;
  readAcceleration(ax, ay, az);

  float co2, humidity;

  if (scd41.readMeasurement())
  {
    co2 = scd41.getCO2();
    humidity = scd41.getHumidity();
  }

  String data = "temperatuur (°C):" + String(temperature) + ",õhurõhk (Pa):" + String(pressure * 100) + ",CO2 kontsentratsioon (ppm):" + String(co2) + ",õhuniiskus (%):" + String(humidity) + ",X-telje kiirendus (m/s2):" + String(ax * 9.81) + ",Y-telje kiirendus (m/s2):" + String(ay * 9.81) + ",Z-telje kiirendus (m/s2):" + String(az * 9.81);

  sendData(data);

  Serial.println(data);

  delay(1000);

}
