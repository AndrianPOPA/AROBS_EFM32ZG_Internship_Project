# AROBS Embedded Internship Projects – EFM32ZG_STK3200

This repository includes a series of embedded systems applications developed during the internship at **AROBS Software Transilvania**, using the **EFM32ZG_STK3200** development board.

Each project showcases key embedded development concepts: GPIO handling, capacitive sensing, PWM control, temperature monitoring, gesture detection, and graphical display interaction.

## 🔧 Projects Overview

### 1. **Modular Button & LED Control**
- Controlled `LED0` using `PB0` and `LED1` with `PB1`.
- Implemented software **debounce**, **long press**, and **double press** detection.
- Modular structure using clear separation of button and LED logic.

### 2. **PWM LED Control with Capacitive Touch Buttons**
- Used the datasheet to choose a suitable PWM-compatible pin for LED output.
- Configured a hardware timer to generate a PWM signal.
- Controlled LED brightness through **capacitive touch buttons** (increase/decrease intensity).

### 3. **Thermostat System**
- Read ambient temperature using the onboard sensor.
- Allowed runtime configuration of **target temperature** and **hysteresis**.
- LED logic:
  - **LED_LEFT** ON → temperature < target.
  - **LED_RIGHT** ON → temperature > target.

### 4. **Gesture-Based Circle Drawing**
- Displayed a circle on the screen with **radius proportional to hand distance**.
- Detected **hand gestures**:
  - Move left, right, up, down.
  - Diagonal motion via gesture chaining (e.g., "up + right" = top-right).
  - Priority logic: newer gesture directions override previous ones.

## 🧰 Technologies Used
- Microcontroller: **EFM32ZG (Zero Gecko)**
- Development Board: **EFM32ZG_STK3200**
- Capacitive sensing (touch inputs)
- PWM (timer-controlled brightness)
- LCD screen drawing
- Gesture recognition logic

## 👨‍💻 Internship at:
**AROBS Software Transilvania**  
*Embedded Internship Program – 2025*

---

Each subfolder contains detailed source code, comments, and technical documentation for its respective problem.
