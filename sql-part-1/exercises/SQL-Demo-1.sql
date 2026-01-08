select *
  From formula_one.INFORMATION_SCHEMA.columns
  Where Table_name='drivers'

  Select count(*)
  From formula_one.dbo.drivers
  where nationality ='british'

  select COUNT(DISTINCT driverId)
  FROM formula_one.dbo.lap_times
  where time < '0:57.0'

  #This is the additional comment

  USE formula_one
  SELECT Top 100 *
  From pit_stops
  order by raceId, driverId

--How many pit stops each driver take in each race they complte 
  Use formula_one
  select MAX("stop") AS total_pit_stops
  from pit_stops
  GROUP BY raceId, driverId
  ORDER BY raceId
