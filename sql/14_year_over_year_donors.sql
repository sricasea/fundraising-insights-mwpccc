-- This query calculates the total number of unique donors per year based on the donation_date.

SELECT 
    EXTRACT(YEAR FROM donation_date) AS year, 
    COUNT(DISTINCT entity_id) AS unique_donors
FROM donations
GROUP BY year
ORDER BY year;
