# 📉 Lab 5: Step and Impulse Response of LTI System using Matlab

Welcome to **Lab 5** of **ELYM 316 – Signals and Systems (2025)**! This lab uses MATLAB to analyze the step and impulse responses of Linear Time-Invariant (LTI) systems with given transfer functions.

---

## 🎯 Objectives
- **Task 1**: Plot the impulse and step responses of an LTI system with \( H(s) = \frac{s + 5}{s^2 + 2s + 5} \).
- **Task 2**: Plot the output \( y(t) \) for input \( x(t) = u(t - 3) \) with impulse response \( h(t) = e^{-3t}u(t) \), and include separate plots of the unit step and impulse responses.

---

## 📊 Visualizations

### Task 1
- **Impulse Response**:  
  ![Impulse Response](impulse_response_task1.png)  
  *Impulse response of \( H(s) = \frac{s + 5}{s^2 + 2s + 5} \)*

- **Step Response**:  
  ![Step Response](step_response_task1.png)  
  *Step response of \( H(s) = \frac{s + 5}{s^2 + 2s + 5} \)*

### Task 2
- **Input and Output on Same Axes**:  
  ![Input and Output](input_output_task2.png)  
  *Input \( x(t) = u(t - 3) \) (blue) and output \( y(t) \) (red)*

- **Unit Step Response**:  
  ![Unit Step Response](step_response_task2.png)  
  *Step response of \( h(t) = e^{-3t}u(t) \)*

- **Impulse Response**:  
  ![Impulse Response](impulse_response_task2.png)  
  *Impulse response of \( h(t) = e^{-3t}u(t) \)*

---

## 💻 MATLAB Code
The script `lti_response.m` handles both tasks, generating the required plots and responses. Run it in MATLAB to reproduce the results.

---

## 🛠️ How to Run
1. Ensure MATLAB is installed.
2. Run `lti_response.m` to generate the plots and console output.
3. Save the plots as `impulse_response_task1.png`, `step_response_task1.png`, `input_output_task2.png`, `step_response_task2.png`, and `impulse_response_task2.png` for inclusion in this README.

---

## 📝 Notes
- Group 5 Members: IR Twala, L Saohatse, T Chaba, MJ Ramaoka.

*Completed for ELYM 316 – Signals and Systems, August 25, 2025.*
