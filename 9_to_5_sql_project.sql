--1. Use this space to make note of each table in the database, the columns within each table, each column’s data type, and how the tables are connected. You can write this down or draw a diagram. Whatever method helps you get an 
--understanding of what is going on with `LaborStatisticsDB`.
--Answer-
--explore the LaborStatisticsDB database

--Step 1: List all tables in the database

SELECT TABLE_NAME
FROM LaborStatisticsDB.INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
--9 rows affected 

--Step 2: List columns and data types for each table
SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'annual_2016';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'datatype';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'footnote';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'industry';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'january_2017';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'period';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'seasonal';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'series';

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'supersector';

--Step 3: Identify relationships between tables

--series_id appears in both series and emplyoement table , it’s likely a relationship.


--2. What is the datatype for women employees?

SELECT TOP 10 *
FROM LaborStatisticsDB.dbo.datatype;

SELECT COLUMN_NAME, DATA_TYPE
FROM LaborStatisticsDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'datatype'
  AND COLUMN_NAME LIKE '%women%';

SELECT *
FROM LaborStatisticsDB.dbo.datatype;

SELECT TOP 10 series_id, data_type_code
FROM LaborStatisticsDB.dbo.series;


SELECT TOP 20 *
FROM LaborStatisticsDB.dbo.series
WHERE data_type_code = '10';

--Answer -The data type for Women employees is 10.

--3. What is the series id for  women employees in the commercial banking industry in the 
--financial activities supersector?

SELECT TOP 10 
    s.series_id, 
    s.data_type_code, 
    i.industry_code, 
    i.industry_name
FROM LaborStatisticsDB.dbo.series s
JOIN LaborStatisticsDB.dbo.industry i 
    ON s.industry_code = i.industry_code
WHERE s.data_type_code = '10'
  AND i.industry_name LIKE '%Commercial Banking%';

--Answer- 2 rows affected 

--## Aggregate Your Friends and Code some SQL
--1. How many employees were reported in 2016 in all industries? Round to the nearest whole number.

SELECT TOP 10 *
FROM LaborStatisticsDB.dbo.series

SELECT 
    ROUND(SUM(value), 0) AS total_employees_2016
FROM LaborStatisticsDB.dbo.annual_2016
WHERE year = 2016;

--Answer- 2351408916

--2. How many women employees were reported in 2016 in all industries? 
--Round to the nearest whole number.

SELECT 
    ROUND(SUM(value), 0) AS total_women_employees_2016
FROM LaborStatisticsDB.dbo.annual_2016
WHERE series_id = 'CES0000000010';

--Answer- NULL


--3. How many production/nonsupervisory employees were reported in 2016?
-- Round to the nearest whole number. 

SELECT TOP 10 *
FROM LaborStatisticsDB.dbo.series
where series_title = 'Production and nonsupervisory employees '

SELECT 
    ROUND(SUM(value), 0) AS Production_nonsupervisory_employees
FROM LaborStatisticsDB.dbo.annual_2016
WHERE series_id = 'CES0600000006';

--Answer- NULL


--4. In January 2017, what is the average weekly hours worked by production and nonsupervisory 
--employees across all industries?

SELECT 
    ROUND(AVG(value), 2) AS avg_weekly_hours_jan2017
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id = 'CES0600000006'  
  AND month = 1;

SELECT *
FROM LaborStatisticsDB.dbo.[period]
WHERE [YEAR]='2017'
GROUP BY january_2017.[period]

SELECT 
    ROUND(AVG(value), 2) AS avg_weekly_hours_jan2017
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id = 'CES0600000007'  -- avg weekly hours series_id
GROUP BY [period]
--answer- 41.1

--5. What is the total weekly payroll for production and nonsupervisory employees across all
-- industries in January 2017? Round to the nearest penny.

SELECT TOP 10 *
FROM LaborStatisticsDB.dbo.series


WITH employees AS (
    SELECT SUM(value) AS total_employees
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE series_id = 'CES0500000006' AND period = 'M01'
),
avg_hours AS (
    SELECT AVG(value) AS avg_weekly_hours
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE series_id = 'CES0500000007' AND period = 'M01'
),
avg_earnings AS (
    SELECT AVG(value) AS avg_hourly_earnings
    FROM LaborStatisticsDB.dbo.january_2017
    WHERE series_id = 'CES0500000008' AND period = 'M01'
)
SELECT 
    ROUND(
        (SELECT total_employees FROM employees) *
        (SELECT avg_weekly_hours FROM avg_hours) *
        (SELECT avg_hourly_earnings FROM avg_earnings),
    2) AS total_weekly_payroll_jan2017;

--Answer- 148996351.39

--6. In January 2017, for which industry was the average weekly hours worked by production and nonsupervisory employees the highest?
 --Which industry was the lowest?

SELECT TOP 1 
    i.industry_name,
    j.value AS avg_weekly_hours
FROM LaborStatisticsDB.dbo.january_2017 j
JOIN LaborStatisticsDB.dbo.series s
    ON j.series_id = s.series_id
JOIN LaborStatisticsDB.dbo.industry i
    ON s.industry_code = i.industry_code
WHERE j.series_id = 'CES0500000007'
  AND j.period = 'M01'
ORDER BY j.value DESC;

--lowest
SELECT TOP 1 
    i.industry_name,
    j.value AS avg_weekly_hours
FROM LaborStatisticsDB.dbo.january_2017 j
JOIN LaborStatisticsDB.dbo.series s
    ON j.series_id = s.series_id
JOIN LaborStatisticsDB.dbo.industry i
    ON s.industry_code = i.industry_code
WHERE j.series_id = 'CES0500000007'
  AND j.period = 'M01'
ORDER BY j.value ASC;

--Answer- Total private = 33.6

--## Join in on the Fun
--Time to start joining! You can choose the type of join you use, just make sure to make a  note!

--1. Join `annual_2016` with `series` on `series_id`. We only want the data in the `annual_2016`
 --table to be included in the result.

 SELECT 
    a.*,
    s.series_title,
    s.industry_code,
    s.data_type_code
FROM LaborStatisticsDB.dbo.annual_2016 AS a
LEFT JOIN LaborStatisticsDB.dbo.series AS s
    ON a.series_id = s.series_id;

--Answer- 29042 rows affected

    SELECT TOP 50
    a.*, 
    s.series_title, 
    s.industry_code, 
    s.data_type_code
FROM LaborStatisticsDB.dbo.annual_2016 AS a
LEFT JOIN LaborStatisticsDB.dbo.series AS s
    ON a.series_id = s.series_id
ORDER BY a.id;

--Answer- 50 rows affected

--2. Join `series` and `datatype` on `data_type_code`.
-- Limiting rows returned from query, uncomment the line below to start on your query!
-- SELECT TOP 50 *
-- Uncomment the line below when you are ready to run the query, leaving it as your last!
-- ORDER BY id

SELECT TOP 50
    s.series_id,
    s.series_title,
    s.data_type_code,
    d.data_type_text
FROM LaborStatisticsDB.dbo.series AS s
LEFT JOIN LaborStatisticsDB.dbo.datatype AS d
    ON s.data_type_code = d.data_type_code
ORDER BY s.series_id;

--Answer- 50 rows affected

--3. Join `series` and `industry` on `industry_code`.

-- Limiting rows returned from query, uncomment the line below to start on your query!
-- SELECT TOP 50 *
-- Uncomment the line below when you are ready to run the query, leaving it as your last!
-- ORDER BY id

SELECT TOP 50
    s.series_id,
    s.series_title,
    s.industry_code,
    i.industry_name
FROM LaborStatisticsDB.dbo.series AS s
LEFT JOIN LaborStatisticsDB.dbo.industry AS i
    ON s.industry_code = i.industry_code
ORDER BY s.series_id;

--Answer- 50 rows affected

--## Subqueries, Unions, Derived Tables, Oh My!

--1. Write a query that returns the `series_id`, `industry_code`, `industry_name`, and `value` from the `january_2017` table but only if that value is greater than the average 
--value for `annual_2016` of `data_type_code` 82.

SELECT 
    j.series_id,
    s.industry_code,
    i.industry_name,
    j.value
FROM LaborStatisticsDB.dbo.january_2017 AS j
LEFT JOIN LaborStatisticsDB.dbo.series AS s
    ON j.series_id = s.series_id
LEFT JOIN LaborStatisticsDB.dbo.industry AS i
    ON s.industry_code = i.industry_code
WHERE j.value > (
    SELECT AVG(a.value)
    FROM LaborStatisticsDB.dbo.annual_2016 AS a
    LEFT JOIN LaborStatisticsDB.dbo.series AS s2
        ON a.series_id = s2.series_id
    WHERE s2.data_type_code = '82'
);

--Answer- 754 rows affected

--1. During which time period did production and nonsupervisory employees fare better?

SELECT [value], [period]
FROM LaborStatisticsDB.dbo.january_2017
WHERE series_id IN (select series_id from LaborStatisticsDB.dbo.series where series_title like '%production and nonsupervisory employees%')
AND [value] = (SELECT MAX([value]) from LaborStatisticsDB.dbo.january_2017)

SELECT value, period
FROM LaborStatisticsDB.dbo.january_2017 
HAVING [value] IN (SELECT MAX([value]) where series_id=(Select series_id where series_title like '%production and nonsupervisory employees%'))

Select TOP 10*
FROM LaborStatisticsDB.dbo.series


SELECT top 10*
from LaborStatisticsDB.dbo.[period]

--3. Now that you have explored the datasets, is there any data or information that you wish you had in this analysis?

--Answer-Yes. While the data was helpful, a few more things would have made the analysis better:

--Information by age, gender, or location This would help us see if all groups of workers benefited the same way.

--Cost of living or inflation  Just knowing wages is not enough. It would be helpful to know if wages actually kept up with rising prices.

--Benefits or overtime pay This would show the full income employees are getting, not just their regular pay.

--Unemployment or job loss data This would help us understand how stable jobs were during that time.



