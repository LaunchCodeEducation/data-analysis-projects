--Create a table 
CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.Customers(
 customer_id INT IDENTITY(1,1) PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(100),
 subscription VARCHAR(50),
 join_date DATE DEFAULT CAST(GETDATE() AS DATE)
) ;

Select * FROM Sep2025JunkDB.madhuri_chaudhari.Customers

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.Customers(first_name,last_name,email,subscription)
VALUES('Ava','Rodriguez','ava.abcd@email.com','pro'),
('Liam','Patel','liam.patel@email.com','free'),
('Noah','chen','noah.chen@email.com','basic');

UPDATE Sep2025JunkDB.madhuri_chaudhari.Customers
SET email = 'noah.chen@newdomain.com'
--WHERE first_name = 'Noah' AND last_name ='Chen'
WHERE customer_id= 3

--CTE /temp table

SELECT * 
INTO #payingcutomers
FROM Sep2025JunkDB.madhuri_chaudhari.Customers
WHERE subscription <> 'free'

SELECT * from #payingcutomers;

--Temp table from scratch
CREATE TABLE #TempSales(
    sales_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    sale_data DATE DEFAULT GETDATE()
);
--inserting data manually

INSERT INTO #TempSales (product_name,quantity)
VALUES ('Notebook',5) ,('Pencil',20);

SELECT * FROM #TempSales

--Delete 
DELETE  FROM 
Sep2025JunkDB.madhuri_chaudhari.Customers
WHERE email LIKE '%newdomain.com%'

SELECT * FROM Sep2025JunkDB.madhuri_chaudhari.Customers

CREATE TABLE Sep2025JunkDB.madhuri_chaudhari.Orders
(
    order_id INT PRIMARY KEY IDENTITY (1,1),
    customer_id INT FOREIGN KEY REFERENCES Sep2025JunkDB.madhuri_chaudhari.Customers(customer_id),
    order_date DATE DEFAULT GETDATE(),
    total_amount DECIMAL(10,2)

);

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.Orders(customer_id,total_amount)
VALUES(1,249.99),(2,175.50);

DELETE FROM Sep2025JunkDB.madhuri_chaudhari.Customers
WHERE customer_id= 2;

--Dropping table -entire table 

DROP TABLE Sep2025JunkDB.madhuri_chaudhari.Orders

--SELECT *FROM Sep2025JunkDB.madhuri_chaudhari.Orders

