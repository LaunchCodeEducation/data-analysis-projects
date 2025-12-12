--1which driver have ever finished first?

SELECT forename, surname
FROM formula_one.dbo.drivers
WHERE driverId IN   
(
	SELECT DISTINCT driverId
	FROM formula_one.dbo.results
	WHERE position = '1'
)

--2 How many races has each driver entered?

SELECT d.forename, d.surname, 
(
    SELECT COUNT(*) 
 FROM formula_one.dbo.results AS r
 WHERE r.driverId = d.driverId
 ) AS race_count
FROM formula_one.dbo.drivers AS d

--Which driver have entered at least 50 competitions?

SELECT
    d.forename, d.surname
FROM formula_one.dbo.drivers AS d
WHERE
(
    SELECT COUNT(*) 
    FROM formula_one.dbo.results AS r
    WHERE r.driverId = d.driverId
) >= 50

--which driver have finished first at least once? CTE version
WITH Winning_driverIDs AS(
    SELECT DISTINCT driverId
    FROM formula_one.dbo.results
    WHERE position = '1'            

)
SELECT d.forename, d.surname
FROM formula_one.dbo.drivers AS d
WHERE d.driverId IN (SELECT driverId FROM Winning_driverIDs);   

-- for each circuit,in how many years has it hosted at least one race?
--count of distinct year values for each circuit id, from race table
--information about each circuit itself,like the circuit name,which comes from the circuit table

WITH circuit_years AS
(
Select circuitId,COUNT(DISTINCT year) AS num_years_hosted
from formula_one.dbo.races
GROUP BY circuitId
)
SELECT cir.name AS circuit_name,
cy.num_years_hosted
FROM formula_one.dbo.circuits AS cir
INNER JOIN circuit_years AS cy
ON cir.circuitId = cy.circuitId
ORDER BY cy.num_years_hosted DESC;

-- which drivers have scored points in more than 5 different races?
--need: driver table, results

WITH driver_points AS ( SELECT
   driverId,
    COUNT(resultId) AS races_with_points
FROM formula_one.dbo.results
WHERE points > 0
GROUP BY driverId
)
SELECT d.forename ,d.surname,
driver_points.races_with_points AS races_with_points
FROM formula_one.dbo.drivers AS d
INNER JOIN driver_points
ON d.driverId = driver_points.driverId
WHERE driver_points.races_with_points > 5
ORDER BY races_with_points;

-- A list of all driver who are either from the UK or from Italy
SELECT forename,surname,nationality
From formula_one.dbo.drivers
WHERE
nationality = 'British'

UNION 

SELECT forename,surname,nationality
From formula_one.dbo.drivers
WHERE
nationality = 'Italian'

--list of drivers who have either won a race ,or recorded the fastet lap in a race
--"rank "column in results table is the "rank "of the fastest lap.i.e a rank of 1 means they had the first fastet lap in that race
-- table that pulls drivers who won a race

SELECT
    d.forename, d.surname,
    'Race Winner' AS achievement_type
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS r
ON d.driverId = r.driverId
WHERE r.position = '1'
UNION
--table that pulls driver who have recorded the fastet lap in a race
SELECT
    d.forename, d.surname,
    'Fastest Lap' AS achievement_type   
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS r
ON d.driverId = r.driverId
WHERE r.rank = '1';

-- create a list of drivers who races in both 2021 and 2022

--create a table of drivers whoc raced in 2021

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverID = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2021

INTERSECT
--table of drivers who races in 2022

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverID = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2022

--which driver raced in 2021 but not 2022

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverID = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2021

EXCEPT
--table of drivers who races in 2022

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res
ON d.driverID = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2022





