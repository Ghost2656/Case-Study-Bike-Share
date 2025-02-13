---Looking to see the # of bikes Member/Casual use
SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS Total_Trips
FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare`
GROUP BY
  member_casual,
  rideable_type
ORDER BY
  member_casual,
  rideable_type
-- Total Trips Casual/Members take each month
SELECT
  month,
  member_casual,
  COUNT(ride_id) AS Total_Trips
FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare`
GROUP BY
  month,
  member_casual
ORDER BY
  member_casual


  --Total Trips Casual/Members take per week
SELECT
  day_of_week,
  member_casual,
  COUNT(ride_id) AS Total_Trips
FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare`
GROUP BY
  day_of_week,
  member_casual
ORDER BY
  member_casual

--- Total Trips per Hour
SELECT
  EXTRACT(HOUR FROM started_at) AS Hour_of_Day,
  member_casual,
  COUNT(ride_id) AS Total_Trip
FROM
  `centered-sol-442421-n6.Trip_Data.BikeShare`
GROUP BY
  Hour_of_Day,
  member_casual
ORDER BY
  member_casual
-- AVG Rides Per Month
SELECT
  month,
  member_casual,
  AVG(ride_length) AS ride_duration
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare_Cleaned` 
GROUP BY
  month,
  member_casual

--AVG Ride Per Day
SELECT
  day_of_week,
  member_casual,
  AVG(ride_length) AS ride_duration
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare_Cleaned` 
GROUP BY
  day_of_week,
  member_casual

--AVG Ride Per Hour
SELECT
  EXTRACT(HOUR FROM started_at) AS Hour_of_Day,
  member_casual,
  AVG(ride_length) AS ride_duration
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare_Cleaned` 
GROUP BY
  Hour_of_Day,
  member_casual

---The Total Trips Members/Casual take at each start_station_name
SELECT
  start_station_name,
  member_casual,
  AVG(start_lat) AS Latitude,
  AVG(start_lng) AS Longitude,
  COUNT(ride_id) AS Total_Trips
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare_Cleaned` 
GROUP BY
  start_station_name,
  member_casual

  --Total Trips Members/Casauls at each end_station_name
SELECT
  end_station_name,
  member_casual,
  AVG(end_lat) AS Latitude,
  AVG(end_lng) AS Longitude,
  COUNT(ride_id) AS Total_Trips
FROM 
  `centered-sol-442421-n6.Trip_Data.BikeShare_Cleaned` 
GROUP BY
  end_station_name,
  member_casual
