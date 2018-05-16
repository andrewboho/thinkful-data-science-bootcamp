-- ds-bootcamp_1.2.5_challenge
-- Tasmania, Tasmania, Australia

-- What's the most expensive listing?
SELECT *
FROM
    listings
ORDER BY listings.price DESC
LIMIT 3
-- There were three tied for 1500.

-- What neighborhoods seem to be the most popular?
SELECT
    listings.neighbourhood,
    SUM(listings.number_of_reviews) total_reviews
FROM
    listings
GROUP BY listings.neighbourhood
ORDER BY total_reviews DESC
-- Hobert by a wide margin with Launceston in second place

-- What time of year is the cheapest time to go to your city? What about the busiest?

SELECT
    strftime('%m', DATETIME(reviews.date)) month,
    SUM(listings.price) total_monthly_price
FROM
    listings
JOIN
    reviews
ON
    listings.id = reviews.listing_id
GROUP BY month
ORDER BY total_monthly_price ASC
-- Cheapest months would be August and May

SELECT
    strftime('%m', DATETIME(reviews.date)) month,
    COUNT(*) count_reviews
FROM
    reviews
GROUP BY month
ORDER BY count_reviews DESC
-- Busiest time of year would be December/January

