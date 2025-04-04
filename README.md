# 📊 Fundraising Insights for MWPCCC

This project explores 15+ years of donor and fundraising data for Mt. Washington Preschool and Child Care Center (MWPCCC), a nonprofit early childhood organization in Los Angeles. 

Using SQL, Python, and data visualization tools, I analyzed donor engagement, fundraiser performance, and long-term sustainability trends. The goal: provide actionable insights to support financial stability and strategic planning during a time of organizational transition.

[![Open in Deepnote](https://deepnote.com/buttons/launch-in-deepnote.svg)](https://deepnote.com/launch?template=github.com/sricasea/fundraising-insights-mwpccc/blob/main/notebooks/donor_fundraising_analysis.ipynb)

---

## 🔍 Project Highlights

- **Structured raw donor data** from Google Sheets into a relational PostgreSQL database
- **Wrote and documented SQL queries** to uncover key fundraising metrics (top fundraisers, retention, donation distribution, etc.)
- **Visualized trends** in Deepnote using Python, Seaborn, and built-in SQL visual tools
- **Identified financial outliers** and proposed future fundraising strategies
- **Told the story behind the data**, connecting trends to real-world context (COVID, staffing, leadership turnover)

---

## 🧠 Key Questions Answered

- How much has MWPCCC raised over time?
- Which fundraisers were most successful—and why?
- What percentage of donors are one-time vs. recurring?
- Are large donations carrying too much weight?
- How have giving patterns changed over time?

---

## 🛠️ Tools Used

- **PostgreSQL**: data cleaning, structuring, and SQL queries  
- **Deepnote**: exploratory analysis, visualization, and narrative  
- **Python (Pandas, Matplotlib, Seaborn)**: advanced charting and cohort analysis  
- **Google Sheets + Apps Script**: raw data structuring  
- **GitHub**: version control and portfolio presentation

---

## 📁 Project Structure

```
fundraising-insights-mwpccc/
│
├── sql/                     # Raw SQL queries for all major metrics
│   ├── total_funds_over_time.sql
│   ├── donor_retention.sql
│   └── ...
│
├── notebooks/              # Markdown write-up of findings
│   └── donor_fundraising_analysis.ipynb
│
├── images/                 # Visual assets (charts, graphs)
│   └── donor_retention_heatmap.png
│
├── README.md               # This file
└── LICENSE                 # Optional: project license
```

## 📓 Interactive Notebook
This repository includes an interactive Jupyter notebook used to analyze and visualize donor and fundraising trends for MWPCCC. The notebook walks through:

- Data cleaning and schema design
- SQL queries for key metrics (retention, donation tiers, top donors, etc.)
- Visualizations built in Python (matplotlib, seaborn)
- Insightful commentary and analysis throughout

🔗 [View the notebook](notebooks/donor_fundraising_analysis.ipynb)

The notebook uses anonymized data and is intended for educational and illustrative purposes.
---

## 🧵 Background

MWPCCC faced a steep drop in fundraising revenue in the years following COVID-19, despite recovering enrollment. This project emerged as part of my pro bono data internship with the board, where I led the creation of a comprehensive fundraising analysis to support decision-making during a financial crossroads.

---

## 📬 Want to Learn More?

Connect with me on [LinkedIn](https://www.linkedin.com/in/geneva-burleigh-8b76b117/) or check out more of my work on [Deepnote](https://deepnote.com/workspace/puddles-7d469830-b020-4998-9332-fad683944541/project/d50b48dc-8b60-4e72-885a-59c1190a91a3/notebook/Data-Driven-Fundraising-Insights-870451d5ae6d45a5bca1bd2f825144ae).

---

## 📄 License
This project is licensed under the Creative Commons Attribution 4.0 International (CC BY 4.0) license.
You are free to share, remix, and adapt this work — even for commercial purposes — as long as you provide appropriate credit.
