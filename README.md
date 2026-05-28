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

## Project Workflow

Data Collection → Data Cleaning → SQL Analysis → Econometric Modeling → Dashboard Visualization

---

## 📊 Dashboard Preview
* recruiters love visuals first. Put your best screenshot right here!*

![Power BI Dashboard Executive View](visuals/dashboard_screenshot.png)

---

## 💡 Key Analytical Insights
* **Income Over Inflation:** Multiple linear regression in R proved that **Purchasing Power Growth (PCI)** has the strongest positive, statistically significant relationship with consumption expenditure.
* **Food Inflation Dominance:** SQL analysis revealed that food inflation was the most volatile consumer stress factor, consistently outpacing housing and fuel across a majority of quarters.
* **Pandemic Volatility:** The COVID-19 dummy variable confirmed a severe negative shock to baseline consumption growth, paired with record-high macroeconomic volatility.

---

## 🛠️ Technical Deep Dive

### 1. Database Exploration (MySQL)
Used Window functions and complex `CASE` statements to classify macroeconomic stress regimes.
```sql
-- Paste 5-10 lines of your best SQL query here (e.g., your COVID comparison or moving average)
```

### 2. Econometric Modeling (R)
Ran Ordinary Least Squares (OLS) regression and performed strict diagnostic filters to ensure model validity.
* **Multicollinearity Check:** Passed via Variance Inflation Factor (VIF).
* **Autocorrelation & Heteroskedasticity:** Verified using Durbin-Watson and Breusch-Pagan testing.

---

## 📁 Repository Structure
```text
├── data/          # Cleaned quarterly datasets (Excel)
├── sql/           # Queries for inflation trends & regime mapping
├── r-analysis/    # R scripts for OLS regression & residual diagnostics
├── powerbi/       # Interactive dashboard file (.pbix)
└── visuals/       # Dashboard screenshots
```
