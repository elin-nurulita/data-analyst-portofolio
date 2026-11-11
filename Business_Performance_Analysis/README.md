# Business Performance Analytics
### End-to-End Data Analytics Project Using SQL & Power BI

## Project Overview

Business Performance Analytics is an end-to-end data analytics project developed to evaluate business performance across advertising, organic content, customer engagement, and sales activities within a motorcycle-related business context.

This project integrates multiple business datasets to provide insights into marketing effectiveness, application outcomes, SEO content performance, and sales productivity.

Using SQL in Google BigQuery and Power BI, the project transforms raw business data into structured analytical outputs, interactive dashboards, and actionable business recommendations.

---

## Business Objectives

The main objectives of this project are:

- **Evaluate Overall Business Performance:** Monitor advertising expenditure, incoming messages, application volume, application status, and application quality.
- **Measure Advertising Effectiveness:** Analyze advertising costs, generated results, audience reach, impressions, clicks, and cost efficiency.
- **Analyze SEO Performance:** Identify high-performing article groups and individual articles based on audience engagement and generated results.
- **Evaluate Sales Productivity:** Measure incoming chats, responded chats, and chat-to-order conversion rates across individual sales PICs.
- **Support Data-Driven Decisions:** Translate analytical findings into business insights and recommendations for marketing and sales improvement.

---

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Initial data source and spreadsheet preparation |
| CSV | Data format for importing source files |
| Google BigQuery | Data preparation, cleaning, transformation, exploration, and SQL analysis |
| SQL | Data manipulation, aggregation, validation, and business analysis |
| Power BI | Data integration, data modeling, DAX calculations, KPI development, and visualization |
| DAX | Developing calculated measures and business performance indicators |

---

## Dataset Description

The project uses four primary datasets initially provided in Excel format and imported into Google BigQuery after conversion to CSV.

| Dataset | Description |
|---|---|
| Ads | Advertising campaign performance, costs, reach, impressions, clicks, and generated results |
| Artikel | SEO article performance, including impressions, views, likes, clicks, and article groups |
| Chat | Customer discussions, content attribution, follow-up activities, and application records |
| Pesanan | Application records, order status, survey outcomes, and SLIK classifications |

The datasets were processed and transformed into cleaned tables before being integrated into Power BI.

---

## Analytical Workflow

The project follows an end-to-end data analytics workflow:

**1. Data Collection & Preparation**

Four Excel datasets (Ads, Artikel, Chat, and Pesanan) were converted into CSV format and imported into Google BigQuery.

**2. Data Cleaning & Transformation**

SQL was used to standardize data types, handle invalid values, transform selected fields, create cleaned tables, and perform duplicate checks.

**3. Exploratory Data Analysis (EDA)**

Exploratory SQL queries were performed to examine application distributions, order statuses, survey outcomes, and SLIK classifications.

**4. Business Analysis**

SQL analysis was conducted to evaluate advertising performance by content, sales performance by PIC, and SLIK approval outcomes.

**5. Data Modeling**

Four cleaned datasets were integrated in Power BI through table relationships to enable cross-dataset analysis.

**6. DAX Measures & KPI Development**

DAX measures were developed to calculate business performance indicators, advertising efficiency, customer engagement, application outcomes, and sales conversion.

**7. Dashboard Development**

Three Power BI dashboard pages were developed to present business performance, advertising effectiveness, and SEO & sales performance.

**8. Insights & Recommendations**

Analytical findings were interpreted to identify performance patterns and provide recommendations for business improvement.

---

## Power BI Dashboards

The project consists of three dashboard pages.

### 1. Business Performance

Provides an overall overview of business performance, including advertising expenditure, customer engagement, application outcomes, SLIK classification, acquisition channel contribution, and motorcycle series performance.

**Key analytical areas:**
- Advertising expenditure and customer engagement
- Application status distribution
- SLIK classification and application quality
- Ads vs Organic acquisition channel analysis
- Application distribution by motorcycle series

### 2. Ads Performance

Evaluates the effectiveness and efficiency of paid advertising activities.

**Key analytical areas:**
- Total advertising costs and generated results
- Cost per result
- Results and advertising costs by content
- Impressions, reach, and link clicks
- Cost efficiency across advertising content
- Geographic distribution of advertising-generated results

### 3. SEO & Sales Performance

Evaluates organic article performance and individual sales PIC effectiveness.

**Key analytical areas:**
- Results by article group
- Article impressions, views, likes, and clicks
- Incoming chats vs responded chats by PIC
- Chat response-to-order conversion rate by PIC

---

## Key Business Insights

The analysis identified several important findings:

### 1. Application Quality

Best and Good SLIK classifications represented approximately **69.93%** of the reported application distribution.

Under the applicable business criteria, these classifications have a 100% ACC rate.

### 2. Acquisition Channel Contribution

Among applications with Best and Good SLIK classifications:
- Ads contributed 63%.
- Organic / SEO contributed 36%.

Paid advertising contributed a larger share of applications within these favorable SLIK categories.

### 3. Advertising Content Performance

- Content 3 generated the highest number of advertising results.
- Content 6 achieved the lowest cost per result.
- Content 1 performed consistently across both measurements.

### 4. SEO Content Performance

Different articles performed best across different engagement metrics:

- **Highest Results:** Honda Genio article group.
- **Highest Views:** Honda CB 150R.
- **Highest Impressions:** Motor Honda DP Murah.
- **Highest Likes:** Harga Honda Scoopy.
- **Highest Clicks:** Honda Genio.

### 5. Sales Conversion Performance

Rizky achieved the highest chat response-to-order conversion rate at **5.03%**, followed by Rendy at 4.87% and Nadia at 4.86%.

Interestingly, Sinta, Andi, and Fajar handled the highest chat volumes but recorded lower conversion rates.

This highlights the difference between operational workload and sales conversion effectiveness.

---

## Business Recommendations

Based on the analytical findings, several recommendations were identified:

1. **Advertising Optimization:** Evaluate advertising budget allocation by considering both result volume and cost efficiency.
2. **Regional Marketing Strategy:** Develop more targeted content strategies based on regional advertising performance.
3. **SEO Content Improvement:** Use high-performing articles as references for improving organic content exposure and engagement.
4. **Sales Performance Improvement:** Identify effective customer-handling practices from high-converting PICs and share them across the sales team.
5. **Application Process Monitoring:** Improve monitoring and follow-up activities for applications that have not completed the survey process.
6. **Application Quality Monitoring:** Evaluate acquisition channels based on both application volume and SLIK classification.

---

## SQL Techniques Applied

The SQL analysis utilized the following techniques and functions:

- Data type conversion using `CAST` and `SAFE_CAST`
- Conditional transformation using `CASE WHEN`
- Data standardization using `TRIM` and `SPLIT`
- Aggregation using `SUM`, `COUNT`, and `COUNT(DISTINCT)`
- Data grouping using `GROUP BY`
- Common Table Expressions (CTEs)
- Data integration using `LEFT JOIN`
- Result combination using `UNION ALL`
- Conditional aggregation
- Safe calculations using `SAFE_DIVIDE`
- NULL handling using `COALESCE`

---

## Repository Structure

```text
business-performance-analytics/
│
├── README.md
│
├── 01_Project_Overview/
│   └── Project_Overview.md
│
├── 02_Data_Source/
│   └── Data_Description.md
│
├── 03_SQL_Analysis/
│   ├── README.md
│   ├── 02_Data_Cleaning/
│   ├── 03_Exploratory_Data_Analysis/
│   └── 04_Business_Analysis/
│
├── 04_Power_BI/
│   ├── 01_Data_Modeling/
│   ├── 02_DAX_Measures/
│   └── 03_Dashboard/
│
└── 05_Insights_and_Recommendations/
    └── Insights_and_Recommendations.md
```

---

## Project Deliverables

The final project includes:

- Four prepared and cleaned datasets.
- SQL scripts for data cleaning, exploratory analysis, and business analysis.
- An integrated Power BI data model.
- Ten DAX measures for business performance monitoring.
- Three Power BI dashboard pages.
- Business insights and recommendations.


**Data Disclaimer:** This project uses a simulated dataset modeled after realistic business operations. All figures, names, identifiers, and specific information have been modified to protect data confidentiality. The dataset is intended for portfolio and analytical demonstration purposes only.

---

## Project Note

This project demonstrates an end-to-end analytical workflow, from raw data preparation and SQL-based analysis to Power BI dashboard development and business recommendations.

The primary objective is to demonstrate practical data analytics skills and the ability to translate business data into meaningful insights that support informed decision-making.

*All business figures and findings are subject to final data validation and applicable data-sharing authorization before public release.*
