-- To analyze fundraising trends over time, we calculated total funds raised per year.

SELECT 
    EXTRACT(YEAR FROM donation_date) AS year,
    SUM(amount) AS total_raised
FROM donations
GROUP BY year
ORDER BY year DESC;
