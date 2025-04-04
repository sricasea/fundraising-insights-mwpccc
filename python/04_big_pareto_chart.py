-- Script to build a Pareto chart that encompasses more data.

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Define the SQL query
query = """
WITH DonorContributions AS (
    SELECT 
        entity_id, 
        SUM(amount) AS total_donated
    FROM donations
    GROUP BY entity_id
),
RankedDonors AS (
    SELECT 
        entity_id, 
        total_donated,
        SUM(total_donated) OVER (ORDER BY total_donated DESC) AS cumulative_donations,
        SUM(total_donated) OVER () AS total_funds
    FROM DonorContributions
)
SELECT 
    entity_id,
    total_donated,
    cumulative_donations,
    total_funds,
    (cumulative_donations / total_funds) * 100 AS cumulative_percentage
FROM RankedDonors
ORDER BY total_donated DESC;
"""

# Execute query and store in DataFrame
df_pareto = pd.read_sql(query, engine_mwpccc_supabase_pgsql)

# Sort donors by total donated
df_pareto = df_pareto.sort_values(by="total_donated", ascending=False)

# Create the plot
fig, ax1 = plt.subplots(figsize=(12, 6))

# Bar chart - Individual donations
color = "tab:blue"
ax1.bar(df_pareto.index, df_pareto["total_donated"], color=color, alpha=0.6, label="Total Donated")
ax1.set_xlabel("Donors (Sorted by Contribution)")
ax1.set_ylabel("Donation Amount ($)", color=color)
ax1.tick_params(axis="y", labelcolor=color)
plt.xticks(rotation=45)

# Line chart - Cumulative percentage
ax2 = ax1.twinx()
color = "tab:red"
ax2.plot(df_pareto.index, df_pareto["cumulative_percentage"], color=color, marker="o", label="Cumulative % of Donations")
ax2.axhline(y=80, color="gray", linestyle="dashed", label="80% Threshold")
ax2.set_ylabel("Cumulative % of Donations", color=color)
ax2.tick_params(axis="y", labelcolor=color)

# Highlight the point where 80% threshold is met
threshold_index = (df_pareto["cumulative_percentage"] >= 80).idxmax()
ax2.scatter(threshold_index, df_pareto["cumulative_percentage"].loc[threshold_index], color="red", s=100, label="80% Point")

# Title and legend
plt.title("Pareto Analysis of Donations: Identifying Key Donors")
fig.tight_layout()
fig.legend(loc="upper right")

# Show the plot
plt.show()
