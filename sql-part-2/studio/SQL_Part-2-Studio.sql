--1.  Create a query that returns the longest title in the dataset.  We can do this in two steps.
--A. Create a query that returns the length of the longest title.
-- B. Create a query that uses the length you found in step A to find the longest title.
-- Replace 'title' with the correct column name if it's different, e.g., 'book_title'

SELECT MAX(LEN(title)) AS LongestTitleLength
FROM BooksDB.dbo.books

-- Answer 186 Characters


--Part B

SELECT title
FROM BooksDB.dbo.books
WHERE LEN(title) = (
    SELECT MAX(LEN(title))
    FROM BooksDB.dbo.books
);


--2.  Use what you learned in question 1 to find the shortest author name.  

--A. Create a query that returns the length of the shortest author.

--B. Create a query that returns the shortest author's name.

Select MIN(LEN(authors)) AS ShortestAuthorLength
FROM BooksDB.dbo.books

SELECT authors
FROM BooksDB.dbo.books
WHERE LEN(authors) = (
    SELECT MIN(LEN(authors))
    FROM BooksDB.dbo.books
);

--3. How many titles contain the word "The"?  

-- A. Is there a difference between the number of titles that use "The" or "the"?

SELECT COUNT(*) AS TitlesWithThe
FROM BooksDB.dbo.books
WHERE title LIKE '%The%';

--OR
Select count(title)
FROM BooksDB.dbo.books
where CHARINDEX('The',title) >0

SELECT COUNT(*) AS TitlesWiththe
FROM BooksDB.dbo.books
WHERE title LIKE '%the%';

--both have same count of 4702

 --4.How many authors' names _start_ with 'Z'?

SELECT COUNT(*) AS AuthorsStartingWithZ
FROM BooksDB.dbo.books
WHERE authors LIKE 'Z%';

--or
SELECT COUNT(*) AS AuthorsStartingWithZ
FROM BooksDB.dbo.books
WHERE LEFT(authors, 1) = 'Z';



--5\. How many books have been identified as printed in a language other than English?  There are four language codes for English: 'en', 'eng', 'en-US', and 'en-UK'.  Use LEFT to answer the question.  
--(Do not use the wildcard)

SELECT COUNT(*) AS NonEnglishBooks
FROM BooksDB.dbo.books
WHERE LEFT(language_code, 5) NOT IN ('en-US', 'en-UK')
  AND LEFT(language_code, 3) NOT IN ('eng')
  AND LEFT(language_code, 2) NOT IN ('en');


  --6\. Retry question 5 using SUBSTRING.

  SELECT COUNT(*) AS NonEnglishBooks
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code, 1, 5) NOT IN ('en-US', 'en-UK')
  AND SUBSTRING(language_code, 1, 3) NOT IN ('eng')
  AND SUBSTRING(language_code, 1, 2) NOT IN ('en');

  --7.  Create a column that returns the title, authors, and language codes.  Concatenate these elements so that they return in the following way: title by authors in language\_code language.

--A.  Check each selected column to see where any values are NULL.  Did any of the columns contain NULL values?  If so, which one?

SELECT title, authors, language_code
FROM BooksDB.dbo.books
WHERE title IS NULL OR authors IS NULL OR language_code IS NULL;



SELECT 
    title,
    authors,
    language_code,
 CONCAT(title, ' by ', authors, ' in ', language_code, ' language') AS BookInfo
FROM BooksDB.dbo.books
WHERE title IS NOT NULL AND authors IS NOT NULL AND language_code IS NOT NULL;



--8.  Update the query in question 7 using COALESCE to change the language code values from NULL to 'unknown'.

-- A.  Has this changed the language\_code  where the values are NULL?

SELECT 
    title,
    authors,
    COALESCE(language_code, 'unknown') AS language_code,
 CONCAT(title, ' by ', authors, ' in ', COALESCE(language_code, 'unknown'), ' language') AS BookInfo
FROM BooksDB.dbo.books

WHERE language_code IS NOT NULL;


--9 Revisit question 7 using ISNULL instead of COALESCE.


SELECT
    title,
    authors,
    ISNULL(language_code, 'unknown') AS language_code,
 CONCAT(title, ' by ', authors, ' in ', ISNULL(language_code, 'unknown'), ' language') AS BookInfo
FROM BooksDB.dbo.books

-- A.  Has this changed the language\_code  where the values are NULL?

WHERE language_code IS NOT NULL;









