-- ds-bootcamp_1.2.4_drill

-- What are the three longest trips on rainy days?
WITH
    rain_days
AS (
    SELECT
        weather.Date,
        weather.Events
    FROM
        weather
    WHERE weather.Events = 'Rain'
    GROUP BY weather.Date
)

SELECT
    trips.trip_id,
    trips.duration,
    DATE(trips.start_date),
    rain_days.Events
FROM
    trips
JOIN
    rain_days
ON
    DATE(trips.start_date) = rain_days.Date
ORDER BY trips.duration DESC
LIMIT 3

-- Which station is full most often?
SELECT
    status.station_id,
    stations.name,
    COUNT(CASE WHEN status.docks_available = 0 THEN 1 END) empty_docks
FROM
    status
JOIN
    stations
ON
    stations.station_id = status.station_id
GROUP BY status.station_id
ORDER BY empty_docks DESC

-- Return a list of stations with a count of number of trips starting at that station but ordered by dock count.

SELECT
    start_station,
    dockcount,
    COUNT(*)
FROM
    trips
JOIN
    stations
ON
    stations.name=trips.start_station
GROUP BY start_station, dockcount
ORDER BY dockcount DESC

-- (Challenge) What's the length of the longest trip for each day it rains anywhere?

WITH
    rain_days
AS (
    SELECT
        weather.Date,
        weather.Events
    FROM
        weather
    WHERE weather.Events = 'Rain'
    GROUP BY weather.Date
),
    rain_trips
AS (
    SELECT
        trips.trip_id,
        trips.duration,
        DATE(trips.start_date) trip_date
    FROM
        trips
    JOIN
        rain_days
    ON
        rain_days.Date = trip_date
    ORDER BY duration DESC
)

SELECT
    trip_date,
    max(duration)
FROM
    rain_trips
GROUP BY trip_date