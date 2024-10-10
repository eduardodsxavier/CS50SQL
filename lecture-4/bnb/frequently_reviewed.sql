/*
In frequently_reviewed.sql, write a SQL statement to create a view named frequently_reviewed. This view should contain the 100 most frequently
reviewed listings, sorted from most- to least-frequently reviewed. Ensure the view contains the following columns:
id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
reviews, which is the number of reviews the listing has received.
If any two listings have the same number of reviews, sort by property_type (in alphabetical order), followed by host_name (in alphabetical order).
*/
CREATE VIEW frequently_reviewed AS
SELECT listings.id, listings.property_type, listings.host_name, COUNT(reviews.id) AS "number of reviews" FROM listings
JOIN reviews ON reviews.listing_id = listings.id
GROUP BY listings.id
ORDER BY "number of reviews" DESC, listings.property_type, listings.host_name
LIMIT 100;
