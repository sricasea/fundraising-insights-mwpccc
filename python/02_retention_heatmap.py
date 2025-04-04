-- Plotting logic script to build a heatmap.

import seaborn as sns
import matplotlib.pyplot as plt

# Convert years to integers (removes the .0 issue)
df_donor_retention["cohort_year"] = df_donor_retention["cohort_year"].astype(int)
df_donor_retention["donor_year"] = df_donor_retention["donor_year"].astype(int)

# Pivot the DataFrame for heatmap visualization
retention_matrix = df_donor_retention.pivot(index="cohort_year", columns="donor_year", values="retention_rate")

# Create the heatmap
plt.figure(figsize=(12, 8))
sns.heatmap(
    retention_matrix, 
    annot=True, 
    fmt=".0%", 
    cmap="Blues", 
    linewidths=0.5,
    annot_kws={"size": 8}  # Reduce font size inside heatmap
)

# Improve axis labels
plt.xlabel("Donation Year", fontsize=14)
plt.ylabel("Cohort Year (First Donation Year)", fontsize=14)
plt.title("Donor Retention Heatmap", fontsize=16)
plt.xticks(rotation=45)  # Rotate x-axis labels for readability
plt.yticks(rotation=0)

plt.show()
