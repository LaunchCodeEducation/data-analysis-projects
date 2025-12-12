--Part A
CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.book
(
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);

SELECT * from Sep2025JunkDB.madhuri_chaudhari.book

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (2, 'A Midsummers Night Dream', 978149413, 1, 23)

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (2, 'Romeo and Juliet', 988535196, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (1, 'The Golden Compass', 451664226, 1, 1);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (1, 'The Subtle Knife', 160419390, 1, 1);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (1, 'The Amber Spyglass', 94387895, 1, 1);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (3, 'The Alchemist', 464069772, 1, 2);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (4, 'And Then There Were None', 335973357, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (5, 'The Joy Luck Club', 990050329, 1, 10);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (5, 'The Moon Lady', 91720786, 1, 24);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Sense and Sensibility', 156879860, 1, 2);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Northanger Abbey', 951273178, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Pride and Prejudice', 415886839, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Mansfield Park', 188534067, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Emma', 994896202, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Persuasion', 28150097, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Lady Susan', 230962926, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (7, 'Wuthering Heights', 280569946, 1, 3);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (8, 'The Handmaids Tale', 639239663, 1, 5);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (8, 'The Testaments', 826875490, 1, 5);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (9, 'The Parable of the Sower', 283359358, 1, 5);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (10, 'Little Women', 495409887, 1, 23);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'Still Life', 455128657, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'A Fatal Grace', 832517012, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'The Cruelest Month', 419285319, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'The Murder Stone', 656621400, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'The Brutal Telling', 144255852, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'Bury Your Dead', 208180961, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'A Trick of the Light', 93451531, 1, 6);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (12, 'Midnights Children', 881082293, 1, 10);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (13, 'Dont Let the Pigeon Drive the Bus!', 18409532, 1, 24);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (14, 'Beezus and Ramona', 744412630, 1, 24);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (15, 'Organic Chemistry', 604328803, 1, 25);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (16, 'I Know Why the Caged Bird Sings', 909947112, 1, 12);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (17, 'Beloved', 46736233, 1, 10);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.book(author_id, title, isbn, available, genre_id)
VALUES (18, 'Brassbones and Rainbows', 330608463, 1, 26);

SELECT * from Sep2025JunkDB.madhuri_chaudhari.book



CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.author (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);

SELECT * FROM Sep2025JunkDB.madhuri_chaudhari.author

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Phillip', 'Pullman', 1946, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('William', 'Shakespeare', 1564, 1616);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Paulo', 'Coelho', 1947, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Agatha', 'Christie', 1890-09-15, 1976-01-12);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Amy', 'Tan', 1952-02-19, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Jane', 'Austin', 1775-12-16, 1817-07-18);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Emily', 'Bronte', 1818-07-30, 1848-12-19);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Margaret', 'Atwood', 1939-11-18, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Octavia', 'Butler', 1947-06-22, 2006-02-24);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Louisa May', 'Alcott', 1832-11-29, 1888-03-06);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Louise', 'Penny', 1958-07-01, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Salman', 'Rushdie', 1947-08-19, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Mo', 'Willems', 1968-02-11, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Beverly', 'Cleary', 1916-04-12, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Peter', 'Vollhardt', 1946-03-07, null);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Maya', 'Angelou', 1928-04-04, 2014-05-28);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Toni', 'Morrison', 1931-02-18, 2019-08-05);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.author(first_name, last_name, birth_year, death_year)
VALUES ('Shirley', 'LeFlore', 1940-03-06, 2019-05-12);


SELECT * FROM Sep2025JunkDB.madhuri_chaudhari.author

CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Jennifer', 'Slayny', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Susan', 'Traviss', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Ritelli', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Tasia', 'Laybourne', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Wren', 'Gergler', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Tory', 'Lees', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Estelle', 'Di Lorio', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Dorian', 'Betje', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Frank', 'Jelk', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Chris', 'Endon', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Gillie', 'Fritz', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Leisha', 'Defty', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Erika', 'Bompass', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Gabe', 'Moxstead', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Blake', 'Teresse', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Joshua', 'Timmouth', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Tasha', 'Timmouth', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Neil', 'Davie', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Emmeline', 'Pitherick', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Josiah', 'Staner', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('James', 'Greetham', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Isaac', 'Barstowk', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Dean', 'Nelane', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Carolina', 'Cranmere', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Champ', 'Lardiner', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Abbie', 'Quaif', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Camile', 'Milbourne', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Quentin', 'Crose', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Silvano', 'Horlick', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Phyllis', 'Cicchillo', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Jerrie', 'Brownhall', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Ludovika', 'Leist', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Tara', 'Knatt', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Kelsie', 'Parkson', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Jodi', 'Leopard', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Rosanna', 'Cultcheth', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Remy', 'Fairpool', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Megan', 'Blyth', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Rikki', 'McLernon', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Clare', 'Haacker', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Chettle', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Sybil', 'Costanza', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Jonas', 'Sinclare', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Claire', 'Bendel', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Kathleen', 'Welband', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Kylie', 'Crannage', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Evelyn', 'Tarajo', NULL);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.patron(first_name, last_name, loan_id)
VALUES ('Oliver', 'Caulson', NULL);

SELECT * FROM Sep2025JunkDB.madhuri_chaudhari.patron

CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);

SELECT * FROM Sep2025JunkDB.madhuri_chaudhari.genre

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (1, 'Fantasy');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (2, 'Adventure');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (3, 'Romance');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (4, 'Contemporary');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (5, 'Dystopian');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (6, 'Mystery');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (7, 'Horror');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (8, 'Thriller');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (9, 'Paranormal');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (10, 'Historical Fiction');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (11, 'Science Fiction');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (12, 'Memoir');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (13, 'Cooking');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (14, 'Art');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (15, 'Self-Help');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (16, 'Development');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (17, 'Motivational');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (18, 'Health');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (19, 'History');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (20, 'Travel');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (21, 'Guide');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (22, 'Families and Relationships');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (23, 'Humor');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (24, 'Childrens');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (25, 'Reference');

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.genre(genre_id, genres)
VALUES (26, 'Poetry');

CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.madhuri_chaudhari.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);

--Part B

--1. Return the mystery book titles and their ISBNs.

SELECT * from Sep2025JunkDB.madhuri_chaudhari.book

SELECT 
    b.Title,
    b.ISBN,
    g.genres
FROM Sep2025JunkDB.madhuri_chaudhari.book AS b
INNER JOIN Sep2025JunkDB.madhuri_chaudhari.genre g
    ON b.genre_id = g.genre_id
WHERE g.genres = 'Mystery';


--Answer- 8 rows 


--2. Return all of the titles and the author's first 
--and last names for books written by authors who are currently living.


SELECT 
    b.Title,
    a.first_name,
    a.last_name
FROM Sep2025JunkDB.madhuri_chaudhari.book AS b
INNER JOIN Sep2025JunkDB.madhuri_chaudhari.author AS a
    ON b.author_id= a.author_id  -- FK (book) matches PK (author)
WHERE a.death_year IS NULL;

--Answer- 19 rows 

--Part C-

--1. Change **available** to **0** (false) for the appropriate book.
SELECT * from Sep2025JunkDB.madhuri_chaudhari.book

UPDATE Sep2025JunkDB.madhuri_chaudhari.book
SET available = 0
WHERE book_id = 1;


--2. Add a new row to the **loan** table with today's date as the `date_out` and the 
--ids in the row matching the appropriate `patron_id` and `book_id`.
--Add a new loan record with today's date

SELECT * from Sep2025JunkDB.madhuri_chaudhari.book


INSERT INTO Sep2025JunkDB.madhuri_chaudhari.loan (book_id, patron_id, date_out)
VALUES (1, 1, CONVERT(date, GETDATE()));
--Answer- 1 row affected

SELECT * from Sep2025JunkDB.madhuri_chaudhari.loan

3. Update the appropriate **patron** with the `loan_id` for the new row created in the **loan** table.

SELECT * from Sep2025JunkDB.madhuri_chaudhari.patron

UPDATE Sep2025JunkDB.madhuri_chaudhari.patron
SET loan_id = (
    SELECT TOP 1 loan_id
    FROM Sep2025JunkDB.madhuri_chaudhari.loan
    WHERE patron_id = 1 AND book_id = 1
    ORDER BY date_out DESC
)
WHERE patron_id = 1;

--Answer- 1 row affected

SELECT * from Sep2025JunkDB.madhuri_chaudhari.patron
--answer- 48 row affected ,loan id added 


## **Part D: Check a Book Back In**

Work with the same patron and book as you create your query to check a book back into the library.

The check a book back in, your query need to do the following:

1. Change **available** to **1** (true) for the appropriate book.
SELECT * FROM Sep2025JunkDB.madhuri_chaudhari.book

UPDATE Sep2025JunkDB.madhuri_chaudhari.book
SET available = 1
WHERE book_id = 1; 

--2. Update the appropriate row in the **loan** table with today's date as the `date_in`.
SELECT * from Sep2025JunkDB.madhuri_chaudhari.loan

UPDATE Sep2025JunkDB.madhuri_chaudhari.loan
SET date_in = CONVERT(date, GETDATE())
WHERE book_id = 1
  AND patron_id = 1
  AND date_in IS NULL;

  --ANSWER- date_in is added -1 row affected 



3. Update the appropriate **patron** changing `loan_id` back to `NULL`.

SELECT *FROM Sep2025JunkDB.madhuri_chaudhari.patron
UPDATE Sep2025JunkDB.madhuri_chaudhari.patron
SET loan_id= NULL
WHERE patron_id = 1;

--Answer- 1 row affected / Loan_id back to NULL

## **Part E: Create a temp table**

Write a query that returns a temporary table for a patron that shows them all of their loans.

_Question to think about:_  Why might a temp table be a good option for this type of query?

SELECT 
    l.loan_id,
    l.book_id,
    b.title AS book_title,
    l.date_out,
    l.date_in
INTO #PatronLoans
FROM Sep2025JunkDB.madhuri_chaudhari.loan AS l
JOIN Sep2025JunkDB.madhuri_chaudhari.book AS b
    ON l.book_id = b.book_id
WHERE l.patron_id = 1;

--Answe- 1 row affected 

SELECT * FROM #PatronLoans;

**Part F: Wrap-up Query**

Create a query that returns the names of the patrons with the genre of every book they currently
 have checked out.

SELECT 
    p.patron_id,
    p.first_name,
    p.last_name,
    b.title AS book_title,
    g.genres AS genre
FROM 
    Sep2025JunkDB.madhuri_chaudhari.patron AS p
JOIN 
    Sep2025JunkDB.madhuri_chaudhari.loan AS l 
    ON p.patron_id = l.patron_id
JOIN 
    Sep2025JunkDB.madhuri_chaudhari.book AS b 
    ON l.book_id = b.book_id
JOIN 
    Sep2025JunkDB.madhuri_chaudhari.genre AS g 
    ON b.genre_id = g.genre_id
WHERE 
    l.date_in IS NULL; 

--Answer- 0 rows affected 

## **Bonus Challenge:**

CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.reference_books (
    reference_id INT IDENTITY(1,1) PRIMARY KEY,
    edition INT,
    book_id INT NULL,
    CONSTRAINT FK_reference_books_book FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.madhuri_chaudhari.book(book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.reference_books (edition, book_id)
VALUES (5, 32);

Select * from Sep2025JunkDB.madhuri_chaudhari.reference_books

--answer- 1 row affected 