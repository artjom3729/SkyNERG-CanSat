# SkyNERG — CanSat 2025

A student team CanSat project developed for the **2025 CanSat competition in Estonia**. The project combines embedded software, radio telemetry, environmental sensing, mechanical design, testing, and technical documentation.

> **Team project:** This repository archives work by the SkyNERG team. The code, reports, and presentation should not be interpreted as the sole work of one person. Individual contributions can be documented separately.

## Mission

- **Primary:** measure atmospheric temperature and pressure and transmit telemetry to a ground station.
- **Secondary:** measure CO₂ concentration and relative humidity using an **SCD41** sensor.
- The flight code also reads three-axis acceleration.

## Repository contents

| Path | Description |
| --- | --- |
| [`CanSat.ino`](CanSat.ino) | Arduino sketch for sensor acquisition and telemetry transmission |
| [`Groundstation.ino`](Groundstation.ino) | Ground station receiver sketch; prints received data to serial |
| [`results.xlsx`](results.xlsx) | Project results spreadsheet |
| [`SkyNERG_dokumentatsioon/`](SkyNERG_dokumentatsioon/) | LaTeX source for the Estonian-language project documentation |
| [`SkyNERG_aruanne.pdf`](SkyNERG_aruanne.pdf) | Project report PDF |
| [`SkyNERG_Lõpparuanne.pdf`](SkyNERG_L%C3%B5pparuanne.pdf) | Final report PDF |
| [`SkyNERG_presentatsioon.pptx`](SkyNERG_presentatsioon.pptx) | Project presentation |

## Hardware and software

The source and report describe an **ESP32-based CanSat NeXT** kit and **SparkFun SCD41** sensor. Arduino sketches use the `CanSatNeXT`, `Wire`, and `SparkFun_SCD4x_Arduino_Library` libraries.

To work with the firmware:

1. Install Arduino IDE and the ESP32 board support.
2. Install the CanSat NeXT and SparkFun SCD4x Arduino libraries.
3. Open `CanSat.ino` or `Groundstation.ino` in Arduino IDE, select the appropriate ESP32 board and port, and upload to the corresponding device.
4. Open Serial Monitor at **115200 baud** to inspect output.

Both sketches use radio initialization ID **213**. Adjust the radio configuration to match your hardware and applicable local radio requirements.

**Note:** The sketches are archived as provided. Hardware operation and successful compilation have not been independently re-tested for this publication. The flight sketch should be reviewed before reuse: CO₂ and humidity variables are only assigned after a successful sensor reading, yet are included in the transmitted message regardless.

## Documentation

The LaTeX report covers mission planning, construction, the parachute, tests, and results. It uses a custom `NERG-UPT.cls` document class. See the included PDF reports for a readable version without a LaTeX installation.
