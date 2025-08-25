# ⚛️ Lab 4: Simulating Radioactive Decay Process

Welcome to **Lab 4** of **ELYM 316 – Signals and Systems (2025)**! This lab uses the Euler algorithm to simulate radioactive decay, determine the half-life and time constant, and compare theoretical and experimental results.

---

## 🎯 Objective
Simulate the decay of 1000 radioactive nuclei over time using the Euler method, and analyze:
- Half-life of the radioactive element.
- Time constant of the decay process.

---

## 📊 Visualizations
### 1. Radioactive Decay: Experimental Half-Life
![Decay with Half-Life](decay_half_life.png)  
*Plot showing the number of atoms over time with half-life marked.*

### 2. Decay Curve Fit for Time Constant Estimation
![Decay Curve Fit](decay_time_constant.png)  
*Logarithmic plot with linear fit to estimate the time constant.*

---

## ❓ Key Results
### (i) Half-Life
- **Theoretical**:  
  - (a) Half-life ≈ 0.693 s  
  - (b) Number of atoms remaining = 500  
- **Experimental**:  
  - (a) Half-life ≈ 0.686 s  
  - (b) Number of atoms remaining ≈ 503.14 (Expected: 500)

### (ii) Time Constant
- **Theoretical**:  
  - (a) Time constant = 1.0 s  
  - (b) Number of atoms remaining at t = 2.0 s ≈ 135.34  
- **Experimental**:  
  - (a) Time constant ≈ 0.98 s  
  - (b) Number of atoms remaining at t = 2.0 s ≈ 132.62

---

## 💻 MATLAB Code
The script `radioactive_decay.m` simulates the decay process, estimates half-life and time constant, and generates the plots. Run it in MATLAB to reproduce the results.

---

## 🛠️ How to Run
1. Ensure MATLAB is installed.
2. Run `radioactive_decay.m` to generate the plots and console output.
3. Save the plots as `decay_half_life.png` and `decay_time_constant.png` for inclusion in this README.

---

## 📝 Notes
- Parameters: Initial atoms = 1000, \(\tau = 1.0\) s, \(\Delta = 0.02\) s.

*Completed for ELYM 316 – Signals and Systems, August 25, 2025.*
