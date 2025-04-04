-- This analysis compares direct, unprompted donations against structured fundraising events.

WITH fundraiser_totals AS (
    SELECT 
        EXTRACT(YEAR FROM d.donation_date) AS donation_year,
        SUM(d.amount) AS fundraiser_revenue
    FROM donations d
    WHERE d.fundraiser_id != 'Unprompted' -- Excludes unstructured donations
    GROUP BY donation_year
),
unstructured_totals AS (
    SELECT 
        EXTRACT(YEAR FROM d.donation_date) AS donation_year,
        SUM(d.amount) AS unstructured_donations
    FROM donations d
    WHERE d.fundraiser_id = 'Unprompted' -- Captures only unstructured donations
    GROUP BY donation_year
)
SELECT 
    COALESCE(f.donation_year, u.donation_year) AS year,
    COALESCE(f.fundraiser_revenue, 0) AS total_fundraiser_revenue,
    COALESCE(u.unstructured_donations, 0) AS total_unstructured_donations
FROM fundraiser_totals f
FULL OUTER JOIN unstructured_totals u 
    ON f.donation_year = u.donation_year
ORDER BY year;
