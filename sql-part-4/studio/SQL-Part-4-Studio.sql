## QUESTION 1:  Willow

Willow wants a list of book titles that have multiple authors attributed to them. 
 Write a query to return her desired results.

SELECT title,authors 
    
FROM 
    BooksDB.dbo.books AS b
where (
    select count(*)
    from BooksDB.dbo.books AS b2
    where b2.title =b.title
)>1
order by title, authors;

--Answer- 69 rows affected

## QUESTION 2: Ira

Ira was asked by a customer for titles that have been tagged "Meditation".  
As you create a query for Ira, think about how the tables 
in BooksDB are organized as you write your query.

SELECT b.title

FROM BooksDB.dbo.books as b

WHERE b.book_id IN 

    (

        SELECT b_tags.goodreads_book_id

        FROM BooksDB.dbo.book_tags as b_tags

        WHERE b_tags.tag_id IN

        (

            SELECT tag.tag_id

            FROM BooksDB.dbo.tags as tag

            WHERE tag.tag_name LIKE '%Meditation%'

        )

    )

--Answer 44 rows 

## QUESTION 3:  Alyce
Alyce wants to create a display of books with an average rating of 4.2 or
 higher, but she only wants books that share both title and original title.  Write a query that displays both the original title and title for Alyce, in descending order by rating. 
 Make sure that none of the original titles contain NULL values either.

 
SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
WHERE book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.book_tags
)
AND original_title IS NOT NULL
ORDER BY average_rating DESC;

--Answer 9410 rows 

-- QUESTION 4: Thisbe
--
-- Thisbe is planning to make a long-term display of popular books that she will update monthly,
-- reflecting different time periods. She wants to make it reader-centric by including titles that
-- readers have averagely rated higher than the book's actual average rating.


SELECT title,
       original_publication_year,
       average_rating AS book_avg_rating,
       (
           SELECT AVG(rating)
           FROM BooksDB.dbo.ratings AS r
           WHERE r.book_id = b.book_id
       ) AS reader_avg_rating
FROM BooksDB.dbo.books AS b
WHERE average_rating < (
    SELECT AVG(rating)
    FROM BooksDB.dbo.ratings AS r
    WHERE r.book_id = b.book_id
)
ORDER BY original_publication_year, title;

Answer- 178 rows 