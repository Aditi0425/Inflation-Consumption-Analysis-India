# Inflation-Consumption-Analysis-India
Macroeconomic analytics project analyzing inflation, purchasing power, and household consumption in India using SQL, R, and Power BI.
# Inflation, Purchasing Power & Household Consumption Analysis in India (2013–2025)

## 📌 Executive Summary
* **The Problem:** Quantifying how overlapping economic shocks (food/fuel inflation, income shifts, and COVID-19) altered Indian household spending over a 12-year period.
* **The Action:** Built an end-to-end pipeline using **MySQL** for regime classification, **R** for multiple linear regression diagnostics, and **Power BI** for macroeconomic tracking.
* **The Impact:** Isolated purchasing power as the #1 driver of consumption growth and statistically validated the severe spending contraction during the pandemic.

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
