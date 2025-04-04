-- Script to build a first-look Pareto Chart.

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# SQL Query to retrieve donor contributions
query = """
SELECT entity_name, SUM(amount) AS total_donated
FROM donations
JOIN giving_entities ON donations.entity_id = giving_entities.entity_id
GROUP BY entity_name
ORDER BY total_donated DESC
"""
df_donations = pd.io.sql.read_sql_query(query, engine_mwpccc_supabase_pgsql)

# Sort and calculate cumulative percentage
df_donations = df_donations.sort_values(by="total_donated", ascending=False)
df_donations["cumulative_sum"] = df_donations["total_donated"].cumsum()
df_donations["cumulative_percentage"] = 100 * df_donations["cumulative_sum"] / df_donations["total_donated"].sum()

# Set up figure
fig, ax1 = plt.subplots(figsize=(12,6))

# Bar chart for donor contributions
sns.barplot(x=df_donations["entity_name"][:10], y=df_donations["total_donated"][:10], color="blue", ax=ax1)
ax1.set_ylabel("Total Donations ($)", fontsize=12)
ax1.set_xlabel("Top 10 Donors", fontsize=12)
ax1.tick_params(axis="x", rotation=45)

# Line chart for cumulative percentage
ax2 = ax1.twinx()
sns.lineplot(x=df_donations["entity_name"][:10], y=df_donations["cumulative_percentage"][:10], color="red", marker="o", ax=ax2)
ax2.set_ylabel("Cumulative Percentage of Donations", fontsize=12)
ax2.axhline(y=80, color="gray", linestyle="dashed", linewidth=1)  # 80% reference line

# Titles
plt.title("Pareto Chart: Top 10 Donors vs. Cumulative Contribution", fontsize=14)
plt.grid(True, linestyle="--", alpha=0.6)

# Show Plot
plt.show()
