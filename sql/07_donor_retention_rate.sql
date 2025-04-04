-- Donor retention rate measures how many donors give more than once, helping us assess long-term engagement. A high retention rate suggests a loyal donor base, while a low retention rate indicates challenges in maintaining relationships with donors.

WITH donor_counts AS (
    -- Count donations per Giving Entity
    SELECT 
        entity_id,
        COUNT(donation_id) AS donation_count
    FROM donations
    GROUP BY entity_id
),
repeat_donors AS (
    -- Count Giving Entities that donated more than once
    SELECT COUNT(entity_id) AS repeat_donor_count
    FROM donor_counts
    WHERE donation_count > 1
),
total_donors AS (
    -- Count total unique Giving Entities (first-time + repeat donors)
    SELECT COUNT(DISTINCT entity_id) AS total_donor_count
    FROM donations
),
yearly_retention AS (
    -- Compare donations year over year to track retention
    SELECT 
        EXTRACT(YEAR FROM d1.donation_date) AS donation_year,
        COUNT(DISTINCT d1.entity_id) AS donors_this_year,
        COUNT(DISTINCT d2.entity_id) AS returning_donors
    FROM donations d1
    LEFT JOIN donations d2 
        ON d1.entity_id = d2.entity_id 
        AND EXTRACT(YEAR FROM d2.donation_date) = EXTRACT(YEAR FROM d1.donation_date) - 1
    GROUP BY donation_year
)

-- Final Results
SELECT 
    (SELECT repeat_donor_count FROM repeat_donors) AS total_repeat_donors,
    (SELECT total_donor_count FROM total_donors) AS total_donors,
    ROUND((SELECT repeat_donor_count FROM repeat_donors) * 100.0 / NULLIF((SELECT total_donor_count FROM total_donors), 0), 2) AS overall_retention_rate,
    donation_year,
    donors_this_year,
    returning_donors,
    ROUND(returning_donors * 100.0 / NULLIF(donors_this_year, 0), 2) AS yearly_retention_rate
FROM yearly_retention
ORDER BY donation_year DESC;
