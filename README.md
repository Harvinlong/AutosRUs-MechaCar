# MechaCar Statistical Analysis

## Project Overview

The MechaCar prototype, developed by **AutosRUs**, is facing production challenges that are impeding manufacturing progress. This project aims to analyze production data to provide insights that can assist the manufacturing team in optimizing performance. The key analyses conducted include:

- **Multiple linear regression analysis** to determine which factors influence **miles per gallon (mpg)**.
- **Suspension coil performance analysis** by summarizing the PSI levels from manufacturing lots.
- **T-tests** to assess whether manufacturing lots differ statistically from the population mean.
- **Comparative study** of MechaCar’s vehicle performance against competitors.

## Linear Regression Analysis to Predict MPG

The dataset includes **mpg test results** for 50 MechaCar prototypes, along with various design features such as:

- **Vehicle length**
- **Vehicle weight**
- **Spoiler angle**
- **All-wheel drive (AWD)**
- **Ground clearance**

### Key Findings

The multiple linear regression analysis was conducted to predict **mpg** based on these variables. The regression equation is:

$$
mpg = -104.0 + 6.267(	ext{vehicle length}) + 0.001(	ext{vehicle weight}) + 0.069(	ext{spoiler angle}) + 3.546(	ext{ground clearance}) - 3.411(	ext{AWD})
$$

- **Significant Predictors:**

  - **Vehicle length (p-value = 2.60e-12)**: Strongly correlated with mpg.
  - **Ground clearance (p-value = 5.21e-08)**: Also a significant factor.

- **Model Performance:**

  - **R-squared = 0.7149**, indicating a strong relationship between independent variables and mpg.
  - The slope is **not zero**, meaning changes in vehicle characteristics influence mpg.

## Suspension Coil Analysis

### Manufacturing Lot Summary

The suspension coil PSI levels were analyzed to determine if they met design specifications (variance ≤ 100 PSI).

- **Overall Manufacturing Lot Variance:** 62 PSI (**within specification**)
- **Variance by Lot:**
  - **Lot 1:** 1 PSI (**meets specification**)
  - **Lot 2:** 7.5 PSI (**meets specification**)
  - **Lot 3:** 170 PSI (**exceeds specification**, indicating quality control issues)

## T-Test Analysis on Suspension Coils

T-tests were conducted to determine if the PSI levels in different manufacturing lots significantly differ from the population mean (1500 PSI).

- **All Lots Combined:** p-value = **0.06028** (> 0.05) → No significant difference.
- **Lot 1:** p-value = **1.00** (> 0.05) → No significant difference.
- **Lot 2:** p-value = **0.6072** (> 0.05) → No significant difference.
- **Lot 3:** p-value = **0.04168** (< 0.05) → **Significant difference**, confirming high variance in Lot 3.

## Comparative Study: MechaCar vs. Competitors

To assess MechaCar’s market position, fuel efficiency was chosen as a key metric for comparison with competitors.

### Hypothesis Testing:

- **Null Hypothesis (H₀):** Vehicle weight does not affect mpg.
- **Alternative Hypothesis (H₁):** Vehicle weight affects mpg.

### Statistical Test Used:

- **T-test** to determine if there is a significant correlation between vehicle weight and mpg.
- Required Data: **Vehicle weight and mpg data for MechaCar and competitors.**

### Study Design:

The experiment will assess fuel efficiency under two conditions:

1. **Highway vs. local road fuel consumption** using a full tank of fuel.
2. **Seasonal variation in fuel efficiency**, comparing performance in winter and summer.

## Conclusion

This analysis provides valuable insights into the MechaCar prototype:

- **Vehicle length and ground clearance** are the strongest predictors of mpg.
- **Lot 3 suspension coils** show **high variance**, failing quality standards.
- **T-tests confirm Lot 3’s inconsistency**, while other lots meet expectations.
- **Comparative study with competitors** suggests further research on fuel efficiency improvements.

Addressing these findings will enhance **MechaCar’s production quality, vehicle performance, and market competitiveness**.

