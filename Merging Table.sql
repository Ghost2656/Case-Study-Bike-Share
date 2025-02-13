--Combine 12 tables into 1
  CREATE TABLE 
  `centered-sol-442421-n6.Trip_Data.BikeShare` AS (
  SELECT
    *
  FROM
    ``centered-sol-442421-n6.Trip_Data.202101_TripData`)

-- After I created the table I inserted the other tables into it
INSERT INTO
  `centered-sol-442421-n6.Trip_Data.BikeShare`
SELECT 
  *
FROM
    `centered-sol-442421-n6.Trip_Data.202102_TripData`
-- Did this multiple times 

