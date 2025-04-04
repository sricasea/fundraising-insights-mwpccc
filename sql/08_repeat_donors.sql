-- While the year-over-year retention rate and returning donors graph illustrate the fluctuations in donor engagement over time, they don’t provide a complete picture of how many donors contribute only once versus those who remain engaged across multiple years.

SELECT 
    category,
    COUNT(entity_id) AS donor_count
FROM (
    SELECT entity_id,
        CASE 
            WHEN COUNT(donation_id) = 1 THEN 'One-Time Donors'
            ELSE 'Repeat Donors'
        END AS category
    FROM donations
    GROUP BY entity_id
) subquery
GROUP BY category;
