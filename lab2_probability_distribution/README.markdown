# 📊 Lab 2: Probability Distributions

Welcome to **Lab 2** of **ELYM 316 – Signals and Systems (2025)**! This lab explores the Gaussian (Normal) distribution using MATLAB, generating random data, plotting it, and analyzing the Full Width at Half Maximum (FWHM).

---

## 🎯 Objective
Create a 1000-point Gaussian distribution with:
- Mean (\(\mu\)) = 0
- Standard deviation (\(\sigma\)) = 1
and analyze its properties, including the FWHM.

---

## 📈 Visualizations
Here’s the generated Gaussian distribution:

![Gaussian Distribution](gaussian_distribution.png)  
*Gaussian distribution with \(\mu = 0\) and \(\sigma = 1\)*

---

## ❓ Key Tasks & Results
1. **Generate Data**: 1000 random points following a Gaussian distribution.
2. **Plot**: Visual representation of the distribution (shown above).
3. **FWHM Proof**: Theoretical FWHM = \( 2\sigma \sqrt{2\ln 2} \approx 2.3548 \) (for \(\sigma = 1\)).
4. **Estimate FWHM**: Programmatically calculate FWHM from the data.
5. **Comparison**: Compare theoretical and experimental FWHM values.
6. **Values at FWHM**: Theoretical and experimental \( y(x) \) at FWHM.

**Sample Output**:
- Theoretical FWHM: ~2.3548
- Experimental FWHM: (Calculated from data)
- \( y(x) \) at FWHM: ~0.5 (theoretical max height)

---

## 💻 MATLAB Code
The script `probability_distributions.m` handles data generation, plotting, and FWHM analysis. Run it in MATLAB to see the results and generate the plot.

---

## 🛠️ How to Run
1. Ensure MATLAB is installed.
2. Run `probability_distributions.m` to generate the plot and console output.
3. Save the plot as `gaussian_distribution.png` for inclusion in this README.

---

## 📅 Due Date
- **20 March 2025**

## 📝 Notes
- This lab is part of the ELYM 316 course by Prof. R. Mukaro.
- Submit code, plot, and answers as required.

*Completed for ELYM 316 – Signals and Systems, August 25, 2025.*