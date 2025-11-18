USE BooksDB 
select TOP 100 book_id,authors,title,average_rating as "rating"
from dbo.books
order by average_rating desc