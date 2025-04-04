-- By analyzing the specific official fundraisers classified under "Direct Donation," we can determine which campaigns have had the greatest financial impact, which ones engage the most donors, and how donation patterns differ across events.

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
AND f.fundraiser_id <> 'Unprompted'  -- Exclude Unprompted donations
GROUP BY f.fundraiser_id, f.type, f.center, f.date_started, f.date_ended
ORDER BY total_raised DESC;
