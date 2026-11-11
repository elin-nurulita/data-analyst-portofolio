# Business Performance Analytics
## Project Overview

## 1. Project Background

Business Performance Analytics is a data analytics project developed to evaluate business performance across advertising, organic content, customer engagement, and sales activities within a motorcycle-related business context.

The business generates data from multiple operational and marketing activities, including paid advertising campaigns, SEO articles, customer conversations, and sales applications.

These data sources provide different perspectives on business performance. By integrating and analyzing them, the project aims to provide a more comprehensive understanding of marketing effectiveness, application outcomes, and sales productivity.

The analysis utilizes SQL in Google BigQuery for data preparation, cleaning, transformation, and business analysis, while Power BI is used to integrate datasets, develop performance metrics, and create interactive dashboards.

## 2. Project Objectives

The main objectives of this project are:

### 2.1 Evaluate Overall Business Performance

Monitor advertising expenditure, incoming messages, application volume, order status, and application quality.

### 2.2 Measure Advertising Effectiveness

Evaluate advertising expenditure, generated results, cost efficiency, audience reach, impressions, and link clicks across advertising content.

### 2.3 Analyze SEO Content Performance

Identify high-performing article groups and individual articles based on impressions, views, likes, clicks, and generated results.

### 2.4 Evaluate Sales Performance

Measure incoming and responded chats, application generation, and chat-to-order conversion rates across individual sales PICs.

### 2.5 Support Data-Driven Decision-Making

Transform business data into meaningful insights and recommendations to support marketing and sales performance evaluation.

## 3. Project Scope

The project covers four primary datasets:

| Dataset | Description |
|---|---|
| Ads | Advertising campaign performance, expenditure, audience reach, impressions, clicks, and results. |
| Artikel | SEO article performance, including impressions, views, likes, clicks, and article groups. |
| Chat | Customer discussions, content attribution, follow-up activities, and application records. |
| Pesanan | Sales applications, order status, survey outcomes, and SLIK classifications. |

The analysis focuses on four main business areas:

- Overall Business Performance
- Advertising Performance
- SEO Performance
- Sales Performance

## 4. Tools and Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Initial data source and spreadsheet preparation. |
| CSV | Data exchange format for importing source files. |
| Google BigQuery | SQL-based data preparation, cleaning, transformation, exploration, and business analysis. |
| Power BI | Data integration, relationship modeling, DAX calculations, KPI development, and dashboard visualization. |

## 5. Analytical Workflow

The project follows an end-to-end data analytics workflow:

### Step 1 — Data Collection and Preparation

Four Excel datasets (Ads, Artikel, Chat, and Pesanan) were converted into CSV format and imported into Google BigQuery.

### Step 2 — Data Cleaning and Transformation

SQL was used to standardize data types, handle invalid values, transform selected fields, create cleaned tables, and perform duplicate checks.

### Step 3 — Exploratory Data Analysis (EDA)

Exploratory SQL queries were used to examine application distributions, order statuses, survey outcomes, and SLIK classifications.

### Step 4 — Business Analysis

SQL analysis was conducted to evaluate advertising performance by content, sales performance by PIC, and SLIK approval outcomes.

### Step 5 — Data Modeling and Integration

The four cleaned datasets were integrated in Power BI through table relationships to support cross-dataset analysis.

### Step 6 — KPI Development and Dashboard Creation

DAX measures were developed to calculate business performance indicators, followed by the development of three dashboard pages.

The three dashboard pages include:

1. Business Performance
2. Ads Performance
3. SEO & Sales Performance

### Step 7 — Insights and Recommendations

The dashboard findings were interpreted to identify performance patterns and develop recommendations for marketing, SEO, and sales activities.

## 6. Project Deliverables

The project produces the following analytical outputs:

1. Prepared and cleaned datasets in Google BigQuery.
2. SQL scripts for data preparation, cleaning, exploratory analysis, and business analysis.
3. An integrated Power BI data model.
4. DAX measures and business performance KPIs.
5. Three Power BI dashboard pages:
   - Business Performance
   - Ads Performance
   - SEO & Sales Performance
6. Business insights and actionable recommendations.

## 7. Expected Value

This project demonstrates how multiple business datasets can be transformed into structured analytical information through SQL and Power BI.

The resulting dashboards provide a consolidated view of marketing effectiveness, organic content performance, customer engagement, application outcomes, and sales productivity.

The analysis is intended to support more informed business evaluation and data-driven decision-making.
