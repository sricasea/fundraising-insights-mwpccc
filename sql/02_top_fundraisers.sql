-- This query calculates both total revenue (gross) and net revenue for each fundraiser by subtracting associated costs. It also pulls fundraiser type, status, and date range to provide more context.

WITH fundraiser_revenue AS (
    SELECT 
        fundraiser_id,
        COUNT(donation_id) AS number_of_donations,
        COALESCE(SUM(amount), 0) AS total_raised
    FROM donations
    GROUP BY fundraiser_id
),
fundraiser_expenses AS (
    SELECT 
        fundraiser_id,
        COALESCE(SUM(amount), 0) AS total_costs
    FROM fundraiser_costs
    GROUP BY fundraiser_id
)
SELECT 
    f.fundraiser_id,
    f.type,
    f.status,
    f.date_started,
    f.date_ended,
    COALESCE(fr.number_of_donations, 0) AS number_of_donations,
    COALESCE(fr.total_raised, 0) AS total_raised,
    COALESCE(fe.total_costs, 0) AS total_costs,
    (COALESCE(fr.total_raised, 0) - COALESCE(fe.total_costs, 0)) AS net_revenue
FROM fundraisers f
LEFT JOIN fundraiser_revenue fr ON f.fundraiser_id = fr.fundraiser_id
LEFT JOIN fundraiser_expenses fe ON f.fundraiser_id = fe.fundraiser_id
ORDER BY net_revenue DESC
LIMIT 10;
