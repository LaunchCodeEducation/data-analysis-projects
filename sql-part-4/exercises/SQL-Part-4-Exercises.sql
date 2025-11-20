# Exercises: Complex queries

For the exercises, you are tasked with writing five queries that will help you delve deeper into BooksDB. You can choose whether you want to use a correlated subquery, a nested subquery, the UNION operator, the INTERSECT operator, or the EXCEPT operator for each one. You may not use joins or add multiple statements to the WHERE clause.

1. Write a query that will return the number of users who rated a book above its average rating.


-- Count distinct users who gave a rating higher than that book's average rating


SELECT COUNT(DISTINCT r.user_id) AS users_above_avg
FROM BooksDB.dbo.ratings AS r
WHERE r.rating > (
    SELECT AVG(r2.rating)
    FROM BooksDB.dbo.ratings AS r2
    WHERE r2.book_id = r.book_id
);
--Answer- 49382

2. Write a query that returns the book ids of all books that have over 1000 ratings of 1 star 
or over 1000 ratings of 5 stars.

SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000

UNION

SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000;

3. Write a query that returns the book ids of all books that have over 
1000 ratings of 1 star and over 1000 ratings of 5 stars.

SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000
INTERSECT
SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000;

4.Write a query that returns the book ids of books that have a language code of "en-US" 
and not a langugae code of "en-GB".

SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'
EXCEPT
SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-GB';  

--Answers- 2070 rows 


5. Write a query that returns the names of the tags and the tag ids for tags that were 
used over 100,000 times for a book. 

SELECT tag_id, tag_name
FROM BooksDB.dbo.tags AS t
WHERE (
    SELECT COUNT(*)
    FROM BooksDB.dbo.book_tags AS bt
    WHERE bt.tag_id = t.tag_id
) > 1000
--Answers-186 rows





