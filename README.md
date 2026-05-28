# Inflation, Purchasing Power & Household Consumption Analysis in India (2013–2025)

## Overview

This project analyzes how inflation and purchasing power influence household consumption expenditure in India using quarterly macroeconomic data from 2013–2025. The study combines SQL analytics, econometric modeling in R, and Power BI visualization to examine consumption behavior across pre-COVID, COVID, and post-COVID periods.

---

## Tools & Technologies Used

|Tool | Purpose|
|-------- | --------| 
|Excel | Data cleaning, preprocessing, quarterly aggregation|
|SQL (MySQL) | Database creation and exploratory analysis|
|R (RStudio) | Econometric modeling and diagnostic testing|
|Power BI | Interactive dashboard visualization|

---

## 📊 Dashboard Preview
* recruiters love visuals first. Put your best screenshot right here!*

![Power BI Dashboard Executive View](visuals/dashboard_screenshot.png)

---

## Key Analytical Insights
• Multiple linear regression in R proved that **Purchasing Power Growth (PCI)** has the strongest positive, statistically significant relationship with consumption expenditure.
• SQL analysis revealed that food inflation was the most volatile consumer stress factor, consistently outpacing housing and fuel across a majority of quarters.
• The COVID-19 dummy variable confirmed weaker consumption growth and higher macroeconomic volatility.

---

## Key Analysis Performed
• Inflation trend and volatility analysis
• Consumption expenditure analysis
• COVID vs non-COVID comparison
• Purchasing power analysis
• Multiple linear regression modeling
• Diagnostic testing (VIF, Breusch-Pagan, Durbin-Watson)
• Interactive Power BI dashboard creation

---

## Project Workflow

```text
Data Collection → Data Cleaning → SQL Analysis → Econometric Modeling → Dashboard Visualization
```

---

## Repository Structure
```text
├── data/          # Cleaned quarterly datasets (Excel)
├── sql/           # Queries for inflation trends & regime mapping
├── r-analysis/    # R scripts for OLS regression & residual diagnostics
├── powerbi/       # Interactive dashboard file (.pbix)
└── visuals/       # Dashboard screenshots
```

---

## License
This project is licensed under the MIT License - see the LICENSE file for details.
