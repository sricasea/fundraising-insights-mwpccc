-- This query sums total donation revenue per year, allowing us to see overall trends in giving.

SELECT 
    EXTRACT(YEAR FROM donation_date) AS year, 
    SUM(amount) AS total_donations
FROM donations
GROUP BY year
ORDER BY year;
