SELECT 
base_name,
RIGHT(base_name, 3) AS Last_3_Chars
FROM [dbo].[other_FHV_services_jan_aug_2015]

SELECT 
CHARINDEX(' ', Number_of_Trips) AS trip_space_position,
CHARINDEX(' ', Number_of_Vehicles) AS pickup_space_position
FROM [dbo].[other_FHV_services_jan_aug_2015]


SELECT 
DATENAME(MONTH,Pick_Up_Date ) AS month_name
FROM  [dbo].[other_FHV_services_jan_aug_2015]
ORDER BY  MONTH(Pick_Up_Date) DESC;


SELECT
DATEPART(MONTH, Pick_Up_Date) AS month_number
FROM [dbo].[other_FHV_services_jan_aug_2015]
ORDER BY month_number ASC; 

SELECT MAX(start_lng) AS most_easterly_longitude
FROM [dbo].[lyft]

SELECT TOP 1 *
FROM [dbo].[lyft]
ORDER BY start_lat DESC;


SELECT 
CONCAT(Base_Number,':', Base_Name) AS base_info
FROM [dbo].[other_FHV_services_jan_aug_2015]




