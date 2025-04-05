# 📊 Fundraising Insights for MWPCCC
Author: Geneva Burleigh

Project: End-to-End Data Pipeline: From Raw Records to Strategic Fundraising Insights

---

## 🎯 Objective

This project 15+ years of donor and fundraising data for Mt. Washington Preschool and Child Care Center (MWPCCC), a nonprofit early childhood education organization in Los Angeles, to better understand donor behavior, fundraising trends, and organizational sustainability. The work is split into two main phases:
1. Data Cleaning, Structuring & Migration — transforming messy Google Sheets and exported records into a clean, structured PostgreSQL database.
2. Data Analysis & Visualization — using SQL, Python, and Deepnote to uncover insights, generate dashboards, and support decision-making.

💖 **Want to support the real-world organization behind this project?**  
[Donate to MWPCCC's current fundraiser here.](https://donorbox.org/mwpccc-annual-campaign)

---

## 🧭 Project Structure

```
/fundraising-insights-mwpccc
├── README.md                   ← You're here!
├── LICENSE                     ← Open-source license (CC BY 4.0)
├── sql/                        ← SQL queries for analysis
│   └── 01_total_funds_over_time.sql
│   └── 02_top_fundraisers.sql
│   └── 03_structured_unstructured.sql
│   └── 04_fundraiser_type.sql
│   └── 05_direct_donations.sql
│   └── 06_no_unique_events.sql
│   └── 07_donor_retention_rate.sql
│   └── 08_repeat_donors.sql
│   └── 09_contribution_by_donor_type
│   └── 10_individual_vs_corporate_giving.sql
│   └── 11_donation_amounts.sql
│   └── 12_largest_single_donor.sql
│   └── 13_cumulative_contributions.sql
│   └── 14_year_over_year_donors.sql
│   └── 15_revenue_per_year.sql
│   └── 16_fundraisers_by_year
├── python/                     ← Python scripts for visualizations
│   └── 01_retention_query.py
│   └── 02_retention_heatmap.py
│   └── 03_small_pareto_chart
│   └── 04_big_pareto_chart
├── notebooks/                 ← Deepnote notebooks (exported)
│   └── 01_data_cleaning_migration.ipynb
│   └── 02_donor_fundraising_analysis.ipynb
├── media/                      ← Screenshots / visuals 
│   └── donation_pareto.png
│   └── donor_retention_heatmap.png
│   └── overall_donations.png
│   └── structured_unstructured_donations.png
│   └── trends_in_donor_behavior.png
├── data/                      ← CSVs for transparency and reproducibility
│   └── donations_rows.csv
│   └── fundraiser_costs_rows.csv
│   └── fundraisers_rows.csv
│   └── giving_entities_rows.csv
│   └── occupants_rows.csv

```
---

## 🔧 Phase 1: Data Cleaning & Migration

The original data came from fragmented sources:
  - Google Sheets
  - Procare (tuition and donor exports)
  - Mailchimp (newsletter engagement)
  - Manual entry

*Key Steps*
  - Standardized donor names and addresses
  - Resolved formatting inconsistencies
  - Linked donations to events, fundraisers, and donor types
  - Created a relational schema with 5 core tables
  - Uploaded to a PostgreSQL database (Supabase)

🔗 📓 Notebook: [01_data_cleaning_migration.ipynb](notebooks/01_data_cleaning_migration.ipynb)

This notebook uses anonymized data and is intended for educational and illustrative purposes.
  
---

## 📈 Phase 2: Fundraising Analysis

With clean data in place, we ran a series of queries and visualizations to assess:
  - Total funds raised over time
  - Fundraiser effectiveness (cost vs. return)
  - Donor retention trends (incl. cohort heatmaps)
  - Donation amount distributions
  - High-value donor impact
  - Shifts in donor type (individual vs. corporate)

🔗 📓 Notebook: [02_donor_fundraising_analysis.ipynb](notebooks/02_donor_fundraising_analysis.ipynb)

This notebook uses anonymized data and is intended for educational and illustrative purposes.

*Sample Insights*
  - Unstructured donations contributed significant but inconsistent support
  - Most effective fundraising type: goal-specific + time-bounded campaigns
  - Donor retention dropped sharply in 2020 due to COVID and leadership turnover
  - A single giving entity contributed over $50K across five years

*Visualizations*
  - Line graphs, bar charts, pie charts (via Deepnote)
  - Heatmaps and Pareto charts (via Python + Seaborn / Matplotlib)

## 🛠️ Tools & Technologies
  - Google Sheets: initial raw data, manual entry
  - Google Apps Script: early automation for cleaning
  - PostgreSQL (Supabase): structured cloud database
  - pgAdmin: local database management
  - Deepnote: analysis + notebook workspace
  - Python / Pandas / Matplotlib / Seaborn: advanced visualizations
  - Tableau (planned): stakeholder-ready dashboards

---

## 🧵 Background

MWPCCC faced a steep drop in fundraising revenue in the years following COVID-19, despite recovering enrollment. This project emerged as part of my pro bono data internship with the board, where I led the creation of a comprehensive fundraising analysis to support decision-making during a financial crossroads.

---

## 📬 Want to Learn More?

Connect with me on [LinkedIn](www.linkedin.com/in/genevaburleigh) or check out more of my work on [Deepnote](https://deepnote.com/workspace/puddles-7d469830-b020-4998-9332-fad683944541/project/d50b48dc-8b60-4e72-885a-59c1190a91a3/notebook/Data-Driven-Fundraising-Insights-870451d5ae6d45a5bca1bd2f825144ae).

## 🙌 Get Involved

If you’re part of a nonprofit working with messy data or looking to transform your fundraising strategy through analytics, feel free to fork, adapt, or reach out.

PS: Want to support our mission? [Donate to MWPCCC and join my dataset](https://donorbox.org/mwpccc-annual-campaign) 😄

---

## 📄 License
This project is licensed under the Creative Commons Attribution 4.0 International (CC BY 4.0) license.
You are free to share, remix, and adapt this work — even for commercial purposes — as long as you provide appropriate credit.
