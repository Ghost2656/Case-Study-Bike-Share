--Checking for NULL values
SELECT
  COUNT(*) - COUNT(ride_id) ride_id,
  COUNT(*) - COUNT(rideable_type) rideable_type,
  COUNT(*) - COUNT(started_at) started_at,
  COUNT(*) - COUNT(ended_at) ended_at,
  COUNT(*) - COUNT(start_station_name) start_station_name,
  COUNT(*) - COUNT(start_station_id) start_station_id,
  COUNT(*) - COUNT(end_station_name) end_station_name,
  COUNT(*) - COUNT(end_station_id) end_station_id,
  COUNT(*) - COUNT(start_lat) start_lat,
  COUNT(*) - COUNT(start_lng) start_lng,
  COUNT(*) - COUNT(end_lat) end_lat,
  COUNT(*) - COUNT(end_lng) end_lng,
  COUNT(*) - COUNT(member_casual) member_casual
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare` 


--Looking for DUPLICATE ROWS  
SELECT
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare` 

--Searching for the rows that are duplicate so that I can remove them.
SELECT
  ride_id,
  COUNT(*)
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare` 
GROUP BY
  ride_id
HAVING
  COUNT(*) > 1
---Searching to see that all ride_id rows have the same LENGTH
SELECT 
  LENGTH(ride_id) AS length_ride_id, 
  COUNT(ride_id) AS no_of_rows
FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare`
GROUP BY
  length_ride_id


---Removing rows from ride_id whose LENGTH is less then 16
DELETE FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare`
WHERE
  LENGTH(ride_id) < 16
