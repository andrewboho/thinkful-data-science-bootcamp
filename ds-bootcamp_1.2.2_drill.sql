-- ds-bootcamp_1.2.2_drill

-- The ID's and durations for all trips of duration greater than 500, ordered by duration.

SELECT
    trip_id,
    duration
FROM
    trips
WHERE
    duration > 500
ORDER BY duration

-- Every column of the stations table for station id 84.

SELECT *
FROM
    stations
WHERE
    station_id = 84

-- The min temperatures of all the occurrences of rain in zip 94301.

SELECT
    MinTemperatureF
FROM
    weather
WHERE
    zip = 94301 AND
    Events LIKE 'Rain'