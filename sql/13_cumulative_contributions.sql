-- Query to examine cumulative donor contributions over time to see how many donors have provided significant long-term support.

SELECT 
    d.entity_id, 
    ge.entity_name,
    ge.entity_type,
    COUNT(d.donation_id) AS num_donations,
    SUM(d.amount) AS total_donated
FROM donations d
JOIN giving_entities ge ON d.entity_id = ge.entity_id
GROUP BY d.entity_id, ge.entity_name, ge.entity_type
ORDER BY total_donated DESC;
