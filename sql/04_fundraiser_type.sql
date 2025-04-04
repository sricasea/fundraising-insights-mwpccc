-- This query aggregates donations by fundraiser type to determine what works best for MWPCCC.

SELECT 
    f.type AS fundraiser_type,
    COUNT(DISTINCT f.fundraiser_id) AS number_of_fundraisers,
    COUNT(d.donation_id) AS total_donations,
    SUM(d.amount) AS total_raised,
    AVG(d.amount) AS average_donation
FROM fundraisers f
JOIN donations d ON f.fundraiser_id = d.fundraiser_id
WHERE f.type IS NOT NULL
AND f.fundraiser_id != 'Unprompted'  -- Exclude unstructured donations
GROUP BY f.type
ORDER BY total_raised DESC;
