# **STM32F407VET6 + MPU6050 + ESP8266 Data Logger**

## **📌 Project Overview**
This project reads sensor data from the **MPU6050 (Accelerometer & Gyroscope)** using **STM32F407VET6** and sends it to **ESP8266** via UART. The ESP8266 then receives the data and can display it or send it to a cloud service for wireless monitoring.


## **🛠️ Hardware Requirements**
- **STM32F407VET6 (Black Board)**
- **MPU6050 Sensor (I2C)**
- **ESP8266 (NodeMCU, ESP-01, or similar)**
- **ST-LINK V2 Programmer**
- **Jumper Wires**


## **🔌 Wiring Connections**
### **1️⃣ STM32F407VET6 ↔ MPU6050 (I2C)**
| STM32 Pin | MPU6050 Pin | Function |
|-----------|------------|----------|
| PB6       | SCL        | I2C Clock |
| PB7       | SDA        | I2C Data |
| GND       | GND        | Ground |
| 3.3V      | VCC        | Power |

### **2️⃣ STM32F407VET6 ↔ ESP8266 (UART Serial)**
| STM32 Pin | ESP8266 Pin | Function |
|-----------|------------|----------|
| PA9 (USART1_TX)  | RX (GPIO3)  | STM32 → ESP8266 |
| PA10 (USART1_RX) | TX (GPIO1)  | ESP8266 → STM32 |
| GND        | GND        | Common Ground |

**⚠️ Important:** Ensure that both **STM32 and ESP8266 use 3.3V logic levels.** If your ESP8266 runs on 5V, use a **voltage divider** on TX line.


## **📜 STM32 Firmware Setup**
1. **Install STM32CubeIDE**.
2. **Create a New Project** for STM32F407VET6.
3. **Configure Peripherals in STM32CubeMX:**
   - Enable **I2C1 (PB6, PB7)** for MPU6050.
   - Enable **USART1 (PA9, PA10)** for ESP8266 communication.
4. **Generate Code** and modify `main.c` to:
   - Read MPU6050 sensor values.
   - Send data to ESP8266 via UART.

---
## **📜 ESP8266 Firmware Setup (Using Arduino IDE)**
1. **Install Arduino IDE** and add ESP8266 board support.
2. **Connect ESP8266 to PC via USB.**
3. **Upload the following code:**

```cpp
#include <SoftwareSerial.h>
SoftwareSerial STM32Serial(D3, D4); // RX, TX

void setup() {
    Serial.begin(115200);
    STM32Serial.begin(115200);
    Serial.println("ESP8266 Ready...");
}

void loop() {
    if (STM32Serial.available()) {
        String data = STM32Serial.readStringUntil('\n');
        Serial.println("Received from STM32: " + data);
    }
}


## **📌 Expected Output**
- Open **Arduino Serial Monitor** (Baud: 115200).
- ESP8266 should display sensor data received from STM32:
  
  ESP8266 Ready...
  Received from STM32: Accel: X=1234 Y=-567 Z=8901
  
