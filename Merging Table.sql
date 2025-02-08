--Combine 12 tables into 1
  CREATE TABLE 
  `centered-sol-442421-n6.Trip_Data.BikeShare` AS (
  SELECT
    *
  FROM
    `centered-sol-442421-n6.Trip_Data.202004_TripData`);

-- After I created the table I inserted the other tables into it
INSERT INTO
  `centered-sol-442421-n6.Trip_Data.BikeShare`
SELECT 
  *
FROM
    `centered-sol-442421-n6.Trip_Data.202005_TripData`;
-- Did this multiple times 

-- I encountered some errors from some of the tables where some of the columns where a different datatype.
--So I had to use the CAST() Functions to fix it.
INSERT INTO
  `centered-sol-442421-n6.Trip_Data.BikeShare`
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  SAFE_CAST(start_station_id AS INT64),
  end_station_name,
  SAFE_CAST(end_station_id AS INT64),
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual
FROM
  `centered-sol-442421-n6.Trip_Data.202103_TripData`
