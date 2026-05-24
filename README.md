# 📊 Student Performance & Salary Analysis Dashboard

An interactive Business Intelligence and Data Analytics project built using **Power BI**, **Python**, **SQL**, and **Data Visualization techniques** to analyze student academic performance, technical skills, leadership capabilities, and salary expectations.

---

# 🚀 Project Overview

This project focuses on exploring relationships between:

- Academic performance (CGPA)
- Python experience
- Leadership skills
- Family income
- Graduation year
- Salary expectations
- Student acquisition channels

The dashboard provides meaningful insights through interactive visualizations and KPI-driven analytics.

---

# 🎯 Objectives

- Analyze how technical skills impact salary expectations
- Identify trends between CGPA and compensation goals
- Study leadership influence on career expectations
- Explore demographic and socioeconomic insights
- Build a professional Business Intelligence dashboard

---

# 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Power BI | Dashboard & Visualization |
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| SQL | Data Querying |
| DAX | Calculated Measures & KPIs |
| Git & GitHub | Version Control |

---

# 📂 Project Structure

```plaintext
student-performance-salary-analysis/
│
├── Dashboard/
│   └── student_analysis_dashboard.pbix
│
├── data/
│   └── Data.csv
│
├── notebook/
│   └── analysis.ipynb
│
├── sql/
│   └── queries.sql
│
├── images/
│   ├── dashboard_preview.png
│   ├── dashboard_overview.png
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# 📈 Dashboard Features

## ✅ KPI Cards
- Total Students
- Average CGPA
- Average Salary Expectation
- Average Python Experience

---

## 📊 Visualizations

### 🔹 CGPA vs Salary Expectation
Scatter plot showing relationship between academic performance and salary goals.

### 🔹 Python Experience vs Salary
Analyzes how technical expertise impacts expected salary.

### 🔹 Leadership Skills Distribution
Shows percentage of students with leadership capabilities.

### 🔹 Student Acquisition Channels
Marketing analytics dashboard showing how students discovered the event.

### 🔹 Graduation Year Analysis
Visualizes student distribution by graduation year.

### 🔹 Family Income Analysis
Explores relationship between economic background and salary expectations.

---

# 🎛️ Interactive Dashboard Features

- Dynamic slicers/filters
- Drill-down analytics
- Interactive visuals
- Cross-filtering support
- KPI-based business intelligence reporting

---

# 📸 Dashboard Preview

## Main Dashboard

![Dashboard Preview](images/dashboard_preview.png)

---

# 🔍 Key Insights

- Students with higher Python experience tend to expect higher salaries.
- Strong positive relationship observed between CGPA and salary expectations.
- Leadership skills positively influence salary aspirations.
- Social media channels are the dominant student acquisition source.
- Economic background impacts career and salary expectations.

---

# 📊 Business Intelligence Concepts Used

- KPI Reporting
- Data Cleaning
- Data Transformation
- DAX Calculations
- Interactive Filtering
- Data Storytelling
- Exploratory Data Analysis (EDA)
- Dashboard Design Principles

---

# 🧠 DAX Calculations Used

```DAX
Average Salary = AVERAGE('Data'[Expected salary (Lac)])
```

```DAX
Total Students = COUNT('Data'[First Name])
```

```DAX
Average CGPA = AVERAGE('Data'[CGPA])
```

```DAX
Python Skill Level =
SWITCH(
    TRUE(),
    'Data'[Experience with python (Months)] <= 3, "Beginner",
    'Data'[Experience with python (Months)] <= 8, "Intermediate",
    "Advanced"
)
```

---

# ⚡ How to Run the Project

## 1️⃣ Clone Repository

```bash
git clone https://github.com/iamniranjan7/student-performance-salary-analysis.git
```

---

## 2️⃣ Open Power BI Dashboard

Open:

```plaintext
Dashboard/student_analysis_dashboard.pbix
```

using Microsoft Power BI Desktop.

---

## 3️⃣ Run Jupyter Notebook

```bash
pip install -r requirements.txt
jupyter notebook
```

---

# 📌 Future Improvements

- Deploy dashboard online using Power BI Service
- Add machine learning salary prediction
- Add advanced statistical analysis
- Create mobile-responsive dashboard layout
- Add predictive analytics

---

# 👨‍💻 Author

## Niranjan Shinde

- MCA Graduate
- Data Analytics & Business Intelligence Enthusiast
- Skilled in Python, SQL, Power BI, and Data Visualization

---

# 🌐 GitHub Repository

https://github.com/iamniranjan7/student-performance-salary-analysis

---

# ⭐ If You Like This Project

Give this repository a ⭐ on GitHub!
