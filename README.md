# Inflation, Purchasing Power & Household Consumption Analysis in India (2013–2025)

## Overview

This project analyzes how inflation and purchasing power influence household consumption expenditure in India using quarterly macroeconomic data from 2013–2025. The study combines SQL analytics, econometric modeling in R, and Power BI visualization to examine consumption behavior across pre-COVID, COVID, and post-COVID periods.

---

## Dataset

- Frequency: Quarterly
- Period: 2013–2025
- Source: Official Indian macroeconomic statistics (MoSPI and related government publications)
- Observations: 52 quarters

---

## Tools & Technologies Used

|Tool | Purpose|
|-------- | --------| 
|Excel | Data cleaning, preprocessing, quarterly aggregation|
|SQL (MySQL) | Database creation and exploratory analysis|
|R (RStudio) | Econometric modeling and diagnostic testing|
|Power BI | Interactive dashboard visualization|

---

## Dashboard Preview

<img width="2767" height="1600" alt="Ic project power BI updated one-2" src="https://github.com/user-attachments/assets/aa1616b7-f2a4-4c72-b154-beaf745addb2" />

---

## Key Analytical Insights
• Multiple linear regression results showed that **Purchasing Power Growth (PCI)** has the strongest positive and statistically significant relationship with household consumption expenditure. <br>
• Food inflation emerged as the dominant inflation component across a majority of quarters and played an important role in explaining consumption dynamics. <br>
• COVID disruption periods were associated with weaker consumption growth and increased macroeconomic volatility. <br>

---

## Key Analysis Performed
• Inflation trend and volatility analysis <br>
• Consumption expenditure analysis <br>
• COVID vs non-COVID comparison <br>
• Purchasing power analysis <br>
• Multiple linear regression modeling <br>
• Diagnostic testing (VIF, Breusch-Pagan, Durbin-Watson) <br>
• Interactive Power BI dashboard creation <br>

---

## Project Workflow

```text
Data Collection → Data Cleaning → SQL Analysis → Econometric Modeling → Dashboard Visualization
```

---

## Repository Structure
```text
├── data/                   # Cleaned quarterly datasets (Excel)
├── sql/                    # Queries for inflation trends & regime mapping
├── r-analysis/             # R scripts for OLS regression & residual diagnostics
├── powerbi/                # Interactive dashboard file (.pbix)
└── dashboard-preview/      # Dashboard screenshots
```

---

## Skills Demonstrated

- Data Cleaning & Transformation
- SQL Analytics
- Econometric Modeling
- Statistical Diagnostics
- Business Intelligence & Dashboarding
- Economic Data Interpretation

---

## License
This project is licensed under the MIT License - see the LICENSE file for details.
