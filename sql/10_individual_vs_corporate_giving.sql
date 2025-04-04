-- Query to group donations by year and donor type, summing up the total amount contributed by each group. 

SELECT 
    EXTRACT(YEAR FROM donation_date) AS donation_year,
    donor_type,
    COUNT(donation_id) AS total_donations,
    SUM(amount) AS total_amount
FROM donations
WHERE donor_type IS NOT NULL
GROUP BY donation_year, donor_type
ORDER BY donation_year ASC, total_amount DESC;
