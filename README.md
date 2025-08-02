# 💧 Water Level Controller – ASIC Design

This project implements a simple **Water Level Controller** using Verilog HDL as a part of ASIC design practice. It also includes a SystemVerilog testbench to simulate different tank level scenarios and observe motor activation logic.

---

## 🧠 Project Overview

The system monitors four water level sensors in a tank:

- `E` – **Empty**
- `F` – **Low**
- `H` – **Half**
- `L` – **Full**

### ✅ Motor Control Logic

The motor is **turned ON** if **any of the first three sensors (E, F, or H)** are high.  
It turns **OFF** only when the tank is full (`L = 1`) or if all sensors are off.
