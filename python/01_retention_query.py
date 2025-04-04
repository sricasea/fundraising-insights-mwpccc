-- Query to help us assess whether donors remain engaged or drop off after a certain period by creating a dataframe.

import pandas as pd

query = """
WITH FirstDonations AS (
    SELECT 
        entity_id,
        MIN(donation_date) AS first_donation_year
    FROM donations
    GROUP BY entity_id
)

SELECT 
    EXTRACT(YEAR FROM fd.first_donation_year) AS cohort_year, 
    EXTRACT(YEAR FROM d.donation_date) AS donor_year,
    COUNT(DISTINCT d.entity_id) AS donors,
    COUNT(DISTINCT CASE WHEN d.donation_date > fd.first_donation_year THEN d.entity_id END) AS retained_donors,
    COUNT(DISTINCT CASE WHEN d.donation_date > fd.first_donation_year THEN d.entity_id END)::NUMERIC 
        / COUNT(DISTINCT d.entity_id) AS retention_rate
FROM donations d
JOIN FirstDonations fd ON d.entity_id = fd.entity_id
GROUP BY cohort_year, donor_year
ORDER BY cohort_year, donor_year;
"""

# Execute query and store results in a DataFrame
df_donor_retention = pd.read_sql_query(query, engine_mwpccc_supabase_pgsql)

# Display the DataFrame
df_donor_retention.head()
