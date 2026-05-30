CREATE DATABASE IC_project;
USE IC_project;
CREATE TABLE ic_analysis (
    year INT,
    quarter VARCHAR(2),
    pfce_growth FLOAT,
    general_inflation FLOAT,
    food_inflation FLOAT,
    fuel_inflation FLOAT,
    housing_inflation FLOAT,
    pci_growth FLOAT,
    covid_dummy INT
);

SELECT * FROM ic_analysis;

# top 10 highest inflation period
SELECT year, quarter, general_inflation
FROM ic_analysis
ORDER BY general_inflation DESC
LIMIT 10;

# average inflation by year 
SELECT year, 
ROUND(AVG(general_inflation),2) AS avg_inflation
FROM ic_analysis
GROUP BY year;

# inflation above 6% (RBI target)
SELECT year, quarter, general_inflation
FROM ic_analysis
WHERE general_inflation >6;

# INLFATION BELOW 2% (DEFLATION) 
SELECT year, quarter, general_inflation
FROM ic_analysis
WHERE general_inflation <2;

# INFLATION VOLATILITY 
SELECT ROUND(STDDEV(general_inflation),2) AS inflation_volatility
FROM ic_analysis;

# average inflation during covid 
SELECT ROUND(AVG(general_inflation),2) AS covid_avg_inflation
FROM ic_analysis
where covid_dummy =1;

# avergae inflation during non covid
SELECT ROUND(AVG(general_inflation),2) AS covid_avg_inflation
FROM ic_analysis
where covid_dummy =0;

# COUNTOF HIGH INFLATION QUARTERS 
SELECT COUNT(*) AS high_inflation_quarters
FROM ic_analysis
WHERE general_inflation >6;

# Running Average Inflation
SELECT year, quarter, general_inflation,
ROUND(AVG(general_inflation) OVER (ORDER by YEAR, quarter rows between 3 preceding and current row),2) as moving_avg_inlfation
FROM ic_analysis;
# or 
SELECT year, quarter, general_inflation,
ROUND(AVG(general_inflation) OVER (rows between 3 preceding and current row),2) as moving_avg_inlfation
FROM ic_analysis;

# TOP 5 lowest consumer spending growth period
SELECT year, quarter, pfce_growth
FROM ic_analysis
ORDER BY pfce_growth ASC
LIMIT 5;

# covid vs non covid spending
SELECT 
CASE 
	WHEN covid_dummy =1 THEN 'COVID'
    ELSE 'NON-COVID'
END AS period, 
ROUND(AVG(pfce_growth),2) AS avg_pfce_growth
FROM ic_analysis
GROUP BY period;

# average pfce 
SELECT 
ROUND(AVG(pfce_growth),2) as avg_pfce
FROM ic_analysis;

# average pfce during high inflation 
SELECT 
ROUND(AVG(pfce_growth),2) as avg_pfce_high_inlfation
FROM ic_analysis
WHERE general_inflation >6;

# quarters with high inflation and low spending 
SELECT year, quarter, general_inflation, pfce_growth
FROM ic_analysis
WHERE general_inflation >6 AND pfce_growth <0;

# quarterly ranking by spending growth
SELECT YEAR, quarter, pfce_growth,
RANK() OVER (ORDER BY pfce_growth DESC) AS pfce_growth_rank
FROM ic_analysis;

#quaterly consumption after covid 
SELECT YEAR, quarter, pfce_growth
FROM ic_analysis
where year > 2021;

# classification of consumption growth 
SELECT year, quarter, pfce_growth, 
CASE 
	WHEN pfce_growth >7 THEN 'High Growh'
    WHEN pfce_growth between 3 and 7 then 'Moderate growth'
    else 'LOW GROWTH'
end as pfce_growth_category
FROM ic_analysis;

# CLASSIFICATION OF ECONOMY BY INFLATION AND SPENDING GROWTH 
SELECT year, quarter, 
CASE 
	WHEN general_inflation > 6 AND pfce_growth <3 then 'stagflation'
    WHEN general_inflation < 4 AND pfce_growth > 7 then 'healthy_growth'
    else 'Moderate economy'
end as economic_regime
FROM ic_analysis;

# which inflation component dominated 
SELECT
year,
quarter,
GREATEST(food_inflation,
         fuel_inflation,
         housing_inflation) AS highest_component,
CASE
    WHEN food_inflation >= fuel_inflation
     AND food_inflation >= housing_inflation
    THEN 'Food Inflation'

    WHEN fuel_inflation >= food_inflation
     AND fuel_inflation >= housing_inflation
    THEN 'Fuel Inflation'

    ELSE 'Housing Inflation'
END AS dominant_inflation_component
FROM ic_analysis;

# COMPARE INFLATION COMPONENT 
SELECT 
ROUND(AVG(food_inflation),2) as avg_food_inlfation,
ROUND(AVG(fuel_inflation),2) as avg_fuel_inlfation,
ROUND(AVG(housing_inflation),2) as avg_housing_inlfation
FROM ic_analysis;

# AVERAGE PCI GROWTH PRE VS POST COVID
SELECT 
CASE 
	WHEN year<2020 then 'PRE COVID'
    ELSE 'POST COVID'
END AS period, ROUND(AVG(pci_growth),2) as avg_pci_growth
FROM ic_analysis
GROUP BY period;

# quarter with maximum purchasing power 
SELECT year, quarter, pci_growth
FROM ic_analysis
ORDER BY pci_growth DESC
LIMIT 1;

# quarter with high inflation, low income growth (household stress period)
SELECT year, quarter, general_inflation, pci_growth
FROM ic_analysis
WHERE general_inflation > 6
AND pci_growth < 3;

# worst economic stress quarter
SELECT year, quarter, (general_inflation - pfce_growth - pci_growth) AS stress_score
FROM ic_analysis
ORDER BY stress_score DESC
LIMIT 1;

