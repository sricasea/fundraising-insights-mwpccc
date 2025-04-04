SELECT 
    EXTRACT(YEAR FROM donation_date) AS year,
    SUM(amount) AS total_raised
FROM donations
GROUP BY year
ORDER BY year DESC;
