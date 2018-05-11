-- ds-bootcamp_1.2.3_drill.sql

-- What was the hottest day in our data set? Where was that?
SELECT
    ZIP zip_code,
    MAX(MaxTemperatureF) max_temp
FROM
    weather
GROUP BY ZIP
-- Max temp was 134 at zip code 94063 (thermometer must be directly in the sun).


-- How many trips started at each station?
SELECT
    start_station,
    COUNT(trip_id) trip_count
FROM
    trips
GROUP BY start_station


-- What's the shortest trip that happened?
SELECT
    trip_id,
    MIN(duration) min_trip_duration
FROM
    trips
-- Trip # 1011650, which lasted 60 seconds.


-- What is the average trip duration, by end station?
SELECT
    end_station,
    AVG(duration) average_trip_duration
FROM
    trips
GROUP BY end_station