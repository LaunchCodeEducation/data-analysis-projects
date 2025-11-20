
--Question 1: Write a query of the `books` table that returns the top 100 results and includes `book_id`, `authors`, `title`, and `average_rating`. Use an alias for at least one column and sort the result set in descending order of rating. What is the number one book?
SELECT TOP 100
    book_id,
    authors,
    title AS book_title,     -- alias for title
    average_rating
FROM [BooksDB].[dbo].[books]
ORDER BY average_rating DESC;


--Question 2: Write a query to find the least popular book.

SELECT TOP 1 book_id, title, authors, average_rating
FROM [BooksDB].[dbo].[books]
ORDER BY average_rating ASC;

--Question 3: Which tag is the most popular?

SELECT TOP 1 
    tag_id, "count"
FROM [BooksDB].[dbo].[book_tags]
ORDER BY "count" DESC;

--Question 4: What is the name of the most popular tag?

SELECT *
FROM BooksDB.dbo.tags
WHERE tag_id = (

SELECT TOP (1) tag_id

FROM BooksDB.dbo.book_tags

 ORDER BY "count" DESC)


--Question 5: How many books where released in the first decade of 2000?

SELECT COUNT(*) AS books_2000s
FROM [BooksDB].[dbo].[books]
WHERE original_publication_year BETWEEN 2000 AND 2009;

--Question 6: How many book titles contain the word, "happy"?

SELECT COUNT(*) AS happy_books
FROM [BooksDB].[dbo].[books]
WHERE title LIKE '%happy%';

--Question 7: List the books from the top 3 authors from Question 1. 
-- If there is more than one author just use the first one. Sort the title alphabetically by `author` and then by `average_rating`, best rated to lowest. Does this order matter in sorting?

 SELECT authors, title, average_rating
FROM BooksDB.dbo.books
WHERE authors = 'j.k. rowling' OR authors = 'bill watterson' OR authors = 'brandon sanderson'
ORDER BY title ASC, average_rating DESC

--Question 8: Write a query that returns the number of authors whose first name is between rock and roll.
SELECT COUNT(*) AS authors_between_rock_roll
FROM [BooksDB].[dbo].[books]
WHERE authors BETWEEN 'rock' AND 'roll';

-- Question:  Click here to add a questions that you want to answer and write a query to find 
the answer!

--Question-Returns the top 100 books sorted by average_rating (highest first).
SELECT TOP 100
    book_id,
    authors,
    title AS book_title,
    average_rating
FROM [BooksDB].[dbo].[books]
ORDER BY average_rating DESC;

--question-Books containing the word "happy"

SELECT COUNT(*) AS happy_books
FROM [BooksDB].[dbo].[books]
WHERE title LIKE '%happy%';




