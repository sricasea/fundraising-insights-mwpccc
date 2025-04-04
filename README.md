# 📊 Fundraising Insights for MWPCCC
Author: Geneva Burleigh
Project: End-to-End Data Pipeline: From Raw Records to Strategic Fundraising Insights

This project explores 15+ years of donor and fundraising data for Mt. Washington Preschool and Child Care Center (MWPCCC), a nonprofit early childhood education organization in Los Angeles. 

Using SQL, Python, and data visualization tools, I analyzed donor engagement, fundraiser performance, and long-term sustainability trends. The goal: provide actionable insights to support financial stability and strategic planning during a time of organizational transition.

## 🎯 Objective

This project analyzes historical fundraising data from MWPCCC (Mt. Washington Preschool and Child Care Center) to better understand donor behavior, fundraising trends, and organizational sustainability. The work is split into two main phases:
1. Data Cleaning, Structuring & Migration — transforming messy Google Sheets and exported records into a clean, structured PostgreSQL database.
2. Data Analysis & Visualization — using SQL, Python, and Deepnote to uncover insights, generate dashboards, and support decision-making.

---

## 🧭 Project Structure

```
/fundraising-insights-mwpccc
├── README.md                   ← You're here!
├── LICENSE                     ← Open-source license (CC BY 4.0)
├── sql/                        ← SQL queries for analysis
│   └── top_donors.sql
│   └── donor_retention.sql
│   └── donation_amount_distribution.sql
├── python/                     ← Python scripts for visualizations
│   └── donor_retention_heatmap.py
│   └── donor_pareto_chart.py
├── notebooks/                 ← Deepnote notebooks (exported)
│   └── 01_data_migration_cleaning.ipynb
│   └── 02_fundraising_analysis.ipynb
├── media/                      ← Screenshots / visuals (optional)
│   └── heatmap_preview.png
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

🔗 📓 Notebook: [01_data_migration_cleaning.ipynb](notebooks/donor_fundraising_analysis.ipynb)
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

🔗 📓 Notebook: [02_fundraising_analysis.ipynb](notebooks/donor_fundraising_analysis.ipynb)
    This notebook uses anonymized data and is intended for educational and illustrative purposes.

*Sample Insights*
  - Unstructured donations contributed significant but inconsistent support
  - Most effective fundraising type: goal-specific + time-bounded campaigns
  - Donor retention dropped sharply in 2020 due to COVID and leadership turnover
  - A single giving entity contributed over $50K across five years

*Visualizations*
  - Line graphs, bar charts, pie charts (via Deepnote)
  - Heatmaps and Pareto charts (via Python + Seaborn / Matplotlib)

##🛠️ Tools & Technologies
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

Connect with me on [LinkedIn](https://www.linkedin.com/in/geneva-burleigh-8b76b117/) or check out more of my work on [Deepnote](https://deepnote.com/workspace/puddles-7d469830-b020-4998-9332-fad683944541/project/d50b48dc-8b60-4e72-885a-59c1190a91a3/notebook/Data-Driven-Fundraising-Insights-870451d5ae6d45a5bca1bd2f825144ae).

## 🙌 Get Involved

If you’re part of a nonprofit working with messy data or looking to transform your fundraising strategy through analytics, feel free to fork, adapt, or reach out.
PS: Want to support our mission? [Donate to MWPCCC and join my dataset](https://donorbox.org/mwpccc-annual-campaign) 😄

---

## 📄 License
This project is licensed under the Creative Commons Attribution 4.0 International (CC BY 4.0) license.
You are free to share, remix, and adapt this work — even for commercial purposes — as long as you provide appropriate credit.
