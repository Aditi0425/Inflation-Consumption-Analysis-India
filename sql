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

# average inflation by year 
SELECT year, 
ROUND(AVG(general_inflation),2) AS avg_inflation
FROM ic_analysis
GROUP BY year;

# COUNTOF HIGH INFLATION QUARTERS 
SELECT COUNT(*) AS high_inflation_quarters
FROM ic_analysis
WHERE general_inflation >6;

# Running Average Inflation
SELECT year, quarter, general_inflation,
ROUND(AVG(general_inflation) OVER (rows between 3 preceding and current row),2) as moving_avg_inlfation
FROM ic_analysis;

# covid vs non covid spending
SELECT 
CASE 
	WHEN covid_dummy =1 THEN 'COVID'
    ELSE 'NON-COVID'
END AS period, 
ROUND(AVG(pfce_growth),2) AS avg_pfce_growth
FROM ic_analysis
GROUP BY period;

# quarterly ranking by spending growth
SELECT YEAR, quarter, pfce_growth,
RANK() OVER (ORDER BY pfce_growth DESC) AS pfce_growth_rank
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

# worst economic stress quarter
SELECT year, quarter, (general_inflation - pfce_growth - pci_growth) AS stress_score
FROM ic_analysis
ORDER BY stress_score DESC
LIMIT 1;
