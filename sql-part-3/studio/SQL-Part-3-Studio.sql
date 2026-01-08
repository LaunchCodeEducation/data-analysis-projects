--Highlight popular women writers based on ratings from `BooksDB` by writing a query that
-- returns `tag_id`, the number of times each `tag_id` is used and the `tag_name`. Use the `GROUP BY` and `HAVING` clause to narrow your 
--focus and try multiple keywords, such as "woman" and "female"

SELECT * 
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%woman%' OR tag_name LIKE '%female%'   
ORDER BY tag_name;



SELECT 
    t.tag_id,
    t.tag_name,
    COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t
    ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%woman%' OR t.tag_name LIKE '%female%'
GROUP BY 
    t.tag_id, 
    t.tag_name
ORDER BY 
    tag_count DESC;


 --### Event 2: Choose another event from March/Spring

--Write a query to return authors, titles,
 --ratings, and `tag_id` that you would want to promote during your chosen event. 

 SELECT DISTINCT
    b.authors AS author,
    b.title,
    b.average_rating,
    t.tag_id,
    t.tag_name
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
    ON b.best_book_id = bt.goodreads_book_id
INNER JOIN BooksDB.dbo.tags AS t
    ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Christmas%'  -- filter by your event theme
ORDER BY b.average_rating DESC;

--# Part 2: Choose Another Month

--Choose another month and plan at least 2 events / promotions and answer the following questions:
1. Which month did you choose? September
1. What 2 events / promotions are you highlighting? Back to School and Autumn

--# Part 3: Summarize your Work

For each event write at least one query that joins any two tables in `BooksDB` to 
support your choice and record you thoughts as to why you used the paticlular query.
 At least one of your queries needs to include a `HAVING` clause.

 --Query joins books and book_tags to find books tagged with  School    


SELECT DISTINCT
    b.authors AS author,
    b.title,
    b.average_rating,
    --t.tag_id,
    --t.tag_name
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
    ON b.best_book_id = bt.goodreads_book_id
INNER JOIN BooksDB.dbo.tags AS t
    ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%School%'  -- filter by your event theme

ORDER BY b.average_rating DESC;



--Event 2: Autumn or Fall

--Query joins books and book_tags to find books tagged with  Autumn or Fall
SELECT DISTINCT
    b.authors AS author,
    b.title,
    b.average_rating,
    t.tag_id,
    t.tag_name
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
    ON b.best_book_id = bt.goodreads_book_id
INNER JOIN BooksDB.dbo.tags AS t
    ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Autumn%' 
GROUP BY
    b.authors,
    b.title,
    b.average_rating,
    t.tag_id,
    t.tag_name
HAVING b.average_rating > 4.0
ORDER BY b.average_rating DESC; 


 




