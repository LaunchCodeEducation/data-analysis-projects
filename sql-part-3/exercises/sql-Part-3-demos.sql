--Which circuit did each race take place at(across all years)?
--circuit table : circuitId,name
--races:years,name,circuitId,date
SELECT 
    races.name AS race_name,
	races.year AS race_year,
	races.date AS race_date,
	cir.name AS circuit_name
FROM formula_one.dbo.races AS races
INNER JOIN formula_one.dbo.circuits AS cir 
	ON races.circuitId = cir.circuitId;
-- If you intended to enable READ_COMMITTED_SNAPSHOT, run:
-- ALTER DATABASE [YourDatabaseName] SET READ_COMMITTED_SNAPSHOT ON;

--I want the pitstop data, but with race name instead of race_id
--pitstop: raceId,driverId,stop,lap,time,duration,milliseconds
--races: raceId,name,year

SELECT races.year,races.name,pit.driverId,pit.stop,pit.lap,pit.time,pit.duration,pit.milliseconds
FROM formula_one.dbo.races AS races
LEFT JOIN formula_one.dbo.pit_stops AS pit
ON races.raceId=pit.raceId
WHERE pit.raceId IS NULL

--Which circuits hosted races in 2021?
--year,name of race,name of circuit

SELECT r.YEAR,r.name AS race_name,cir.name AS circuit_name
FROM formula_one.dbo.races AS r
INNER JOIN formula_one.dbo.circuits AS cir
ON r.circuitId=cir.circuitId
WHERE r.year=2021   
ORDER BY cir.name

--who won each race in 2021?
--I want a table with first and last name of the winners,and the name of the race that they won 
--names are in drivers table,race name is in races table and position (where 1 =winner)is in result table)

SELECT r.name AS race_name,
d.forename + ' ' + d.surname AS winner_name
FROM formula_one.dbo.results AS res
INNER JOIN formula_one.dbo.races AS r
ON res.raceId=r.raceId
INNER JOIN formula_one.dbo.drivers AS d
ON res.driverId=d.driverId
WHERE r.year=2021 AND res.position=1 AND res.position <> '\N'

--how many races has each circuit held?
--circuit table(name),and races table  (raceID)

SELECT cir.name AS circuit_name,
COUNT(r.raceId) AS total_races
FROM formula_one.dbo.circuits AS cir
LEFT JOIN formula_one.dbo.races AS r
ON cir.circuitId=r.circuitId
GROUP BY cir.name
ORDER BY total_races DESC

--How many races did each driver participate in 2021?
--drivers(name),results(driverId),races(raceId)

SELECT
d.forename + ' ' + d.surname AS driver_name,
COUNT(res.resultId) AS races_entered
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS res ON d.driverId=res.driverId
INNER JOIN formula_one.dbo.races AS r ON res.raceId = r.raceId
WHERE r.year = 2021
GROUP BY d.forename,d.surname
ORDER BY races_entered DESC

--How many races have been at each circuit?

SELECT cir.name AS circuit_name,
COUNT(r.raceId) AS total_races
FROM formula_one.dbo.circuits AS cir
LEFT JOIN formula_one.dbo.races AS r
	ON cir.circuitId = r.circuitId AND r.year >= 2000
GROUP BY cir.name
HAVING COUNT(r.raceId) > 5

--How many races been won by drivers of each nationality?

SELECT 
--d.forename + ' ' + d.surname AS winner_name,
d.nationality ,COUNT(nationality) as number_of_wins
FROM formula_one.dbo.results AS res
INNER JOIN formula_one.dbo.races AS r
ON res.raceId=r.raceId
INNER JOIN formula_one.dbo.drivers AS d
ON res.driverId=d.driverId
WHERE  res.position=1 AND res.position <> '\N'
GROUP BY d.nationality
HAVING d.nationality IN ('British','Canadian','Australian','American')
ORDER BY number_of_wins DESC







