-- Query to categorize donations into different size ranges.

SELECT 
    CASE 
        WHEN amount < 50 THEN 'Under $50'
        WHEN amount >= 50 AND amount < 100 THEN '$50 - $99'
        WHEN amount >= 100 AND amount < 250 THEN '$100 - $249'
        WHEN amount >= 250 AND amount < 500 THEN '$250 - $499'
        WHEN amount >= 500 AND amount < 1000 THEN '$500 - $999'
        WHEN amount >= 1000 AND amount < 5000 THEN '$1,000 - $4,999'
        WHEN amount >= 5000 THEN '$5,000+'
        ELSE 'Unknown'
    END AS donation_range,
    COUNT(*) AS donation_count,
    SUM(amount) AS total_amount
FROM donations
GROUP BY donation_range
ORDER BY MIN(amount);
