-- Query to identify the largest single donations

SELECT donation_id, entity_id, occupant_full_name, amount, donation_date, fundraiser_id
FROM donations
ORDER BY amount DESC
LIMIT 10;
