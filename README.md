# 📡 ELYM 316 – Signals and Systems Projects

![MATLAB](https://img.shields.io/badge/MATLAB-R2023a-orange?logo=mathworks&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-success)
![License](https://img.shields.io/badge/License-MIT-green)

A collection of labs, assignments, and projects completed for the  
**ELYM 316 – Signals and Systems** module.

This repository explores fundamental **signal processing concepts** through **MATLAB** simulations, reports, and visualizations.

## 📂 Repository Structure
```plaintext
signals-and-systems-projects/
│── README.md
│── LICENSE
│── .gitignore
│
└── labs/
    ├── lab1_motion_under_gravity/
    ├── lab2_probability_distribution/
    ├── lab3_signal_fft/
    ├── lab4_radioactive_decay/
    └── lab5_lti_response/
```

## 🚀 Getting Started
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/signals-and-systems-projects.git
   ```
2. **Navigate to the project folder**:
   ```bash
   cd signals-and-systems-projects
   ```
3. **Install dependencies** (if any):
   - Ensure **MATLAB R2023a** or compatible version is installed.

4. **Explore the labs**:
   - Each lab folder contains code, data, graphs, and documentation specific to the project.
   - Refer to individual lab READMEs for detailed instructions.

## 🧪 Labs Overview
- **[Lab 1: Motion Under Gravity](labs/lab1_motion_under_gravity/)**  
  Simulates a ball thrown vertically upwards with an initial velocity of 30 m/s, plotting vertical distance vs. time, and analyzing maximum height, ascent time, and ground impact. Includes graphs (`verticalmotion.png`, `upwardgravity.png`) and code.

- **[Lab 2: Probability Distributions](labs/lab2_probability_distribution/)**  
  Generates a 1000-point Gaussian distribution (\(\mu = 0\), \(\sigma = 1\)), plots it, and estimates the Full Width at Half Maximum (FWHM). Includes graph (`gaussian_distribution.png`) and code.

- **[Lab 3: Signal Generation and FFTs](labs/lab3_signal_fft/)**  
  Creates 1 Hz, 5 Hz, and 10 Hz signals with amplitudes 3, 2, and 1, combines them with noise, and uses FFTs to recover frequency components. Includes graphs (`1hz_signal.png`, `5hz_signal.png`, `10hz_signal.png`, `combined_signal.png`, `fft_spectrum.png`) and code.

- **[Lab 4: Radioactive Decay](labs/lab4_radioactive_decay/)**  
  Simulates radioactive decay using the Euler algorithm, estimating half-life and time constant with theoretical and experimental comparisons. Includes graphs (`decay_half_life.png`, `decay_time_constant.png`) and code.

- **[Lab 5: Step and Impulse Response of LTI System](labs/lab5_lti_response/)**  
  Analyzes the step and impulse responses of an LTI system with \( H(s) = \frac{s + 5}{s^2 + 2s + 5} \) and computes output for a delayed step input. Includes graphs (`impulse_response_task1.png`, `step_response_task1.png`, `input_output_task2.png`, `step_response_task2.png`, `impulse_response_task2.png`) and code.

## 🛠️ Tools Used
- **MATLAB R2023a**: For signal processing simulations and visualizations.
- **Git**: For version control.

## 📝 License

This project is licensed under the MIT License.
---

*Created for ELYM 316 – Signals and Systems, North-West University.*
