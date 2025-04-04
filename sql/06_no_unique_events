-- Query to exclude non-repeating memorial giving.

SELECT 
    f.fundraiser_id,
    f.type AS fundraiser_type,
    f.center,
    f.date_started,
    f.date_ended,
    COUNT(d.donation_id) AS total_donations,
    SUM(d.amount) AS total_raised,
    AVG(d.amount) AS average_donation
FROM fundraisers f
JOIN donations d ON f.fundraiser_id = d.fundraiser_id
WHERE f.type = 'Direct Donation'  
AND f.fundraiser_id NOT IN ('Unprompted', 'In Pat''s Memory')  -- Escaped apostrophe with double single quotes
GROUP BY f.fundraiser_id, f.type, f.center, f.date_started, f.date_ended
ORDER BY total_raised DESC;
