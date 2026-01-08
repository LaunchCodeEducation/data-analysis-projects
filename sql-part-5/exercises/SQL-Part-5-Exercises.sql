--Create a table under your schema called `planned_makes`.

Create TABLE Sep2025JunkDB.madhuri_chaudhari.Planned_makes(
recipe_ID INT PRIMARY KEY,
recipe_name VARCHAR(50) NOT NULL,
Category VARCHAR(50) NOT NULL,
Process VARCHAR(250),
Created_Date DATE DEFAULT CAST(GETDATE() AS DATE)
);

SELECT * from Sep2025JunkDB.madhuri_chaudhari.Planned_makes

INSERT INTO Sep2025JunkDB.madhuri_chaudhari.Planned_makes(recipe_ID,recipe_name,Category,Process)
VALUES(1,'Pizza','Italian','Roll the base,add the toppings,bake on 450 f for 20 mins'),
(2,'Pasta','Italian','Boil the pasta,In pan add sauce and cookfor 10 mins'),
(3,'Sandwitch','American','take 2 breads ,add Lettuce,cheese and pattie and grill for 5 mins');

--## Update a Row 

UPDATE Sep2025JunkDB.madhuri_chaudhari.Planned_makes
SET recipe_name = 'Boil the pasta add white sauceand cook for 10 mins'
WHERE recipe_ID = 2

--Answer - 1 row affected 

--Delete  1 row from table

DELETE from Sep2025JunkDB.madhuri_chaudhari.Planned_makes
WHERE recipe_ID = 3
--Answer -1 row affected 

SELECT * from Sep2025JunkDB.madhuri_chaudhari.Planned_makes


--## Drop the Table   

DROP TABLE Sep2025JunkDB.madhuri_chaudhari.Planned_makes

--Answer - 2rows affected



