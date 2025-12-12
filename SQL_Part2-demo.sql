select UPPER(LEFT(surname,3)) AS surname_first_3 ,nationality, driverId
FROM formula_one.dbo.drivers;

--Which month have the most races occured in?

select MONTH(date) AS race_month, 
 DATENAME(MONTH,date) AS month_name,
 count(*) AS number_of_races    
from formula_one.dbo.races
where YEAR(date) > 2014
GROUP BY MONTH(date), DATENAME(MONTH,date)
ORDER BY number_of_races DESC;

--Race review occur 4 days after each race.calculate the day of the race review for every race in the races 

SELECT name AS race_name,
date as race_date,
DATEADD(DAY, 4, date) AS review_date
from formula_one.dbo.races

-- how can we display each race date as a formateed string like "Sunday, March 11"?

SELECT name as race_name,
FORMAT(date, 'dddd, MMMM dd,yyyy') AS Formatted_date
from formula_one.dbo.races
ORDER BY [date]

--
SELECT *
FROM BooksDB.dbo.books
where original_title is NULL    

--create a column that has original title, if it exist, or title if original title is null

SELECT authors, book_id, COALESCE(original_title,title) original_title_refined
FROM BooksDB.dbo.books

 


