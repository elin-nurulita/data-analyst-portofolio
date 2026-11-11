SQL Analysis — Google BigQuery
1. Overview
SQL analysis was performed using Google BigQuery to prepare, clean, transform, explore, and analyze business datasets before integrating them into Power BI.
The analysis involved four datasets: Ads, Chat, Artikel, and Pesanan.
2. Data Preparation
The initial data sources were provided in Excel spreadsheet format. All four files were converted into CSV format before being imported into Google BigQuery.
BigQuery Environment:
•	Project ID: portfolio-473815
•	Dataset: motocycle
The imported datasets were stored as raw tables:
•	ads
•	artikel
•	chat
•	pesanan
These raw tables served as the source for subsequent data cleaning and analysis.
3. Data Cleaning and Validation
3.1 Data Type Standardization and Transformation
Selected columns were converted into appropriate data types to ensure consistency and support further analysis.
Key activities included:
•	Converting identifier columns into STRING format.
•	Converting date columns into DATE format.
•	Converting advertising cost-per-result values into FLOAT64 using SAFE_CAST.
•	Creating an adjusted cost-per-result field to handle unavailable numeric values.
•	Extracting article group information from article names using SPLIT and TRIM.
•	Creating cleaned tables for all four datasets.
3.2 Duplicate Detection
Duplicate checks were performed on:
•	Chat table: Id
•	Pesanan table: No pengajuan
The purpose was to identify duplicate records and validate the uniqueness of key identifiers before further analysis.
4. Exploratory Data Analysis (EDA)
Order distribution analysis was performed to understand application patterns and characteristics.
The analysis covered:
•	Application distribution by submission date.
•	Application distribution by order status.
•	Application distribution by survey status.
•	Application distribution by SLIK classification.
These analyses provided an overview of application distribution and business process status.
5. Business Analysis
5.1 Advertising Performance by Content
Advertising performance was analyzed by content name to evaluate:
•	Reach and impressions.
•	Link clicks.
•	Advertising expenditure.
•	Generated results.
•	Cost per result.
•	Attributed applications.
The Ads and Chat datasets were combined using a LEFT JOIN based on content name.
5.2 Sales Performance by PIC
Sales performance was evaluated at both overall and individual PIC levels.
The analysis included:
•	Total discussions.
•	Total applications.
•	Responded discussions.
•	Chat-to-order conversion rate.
The conversion rate was calculated as:
Chat-to-Order Conversion Rate = Total Applications / Responded Chats × 100%
5.3 SLIK Approval Analysis
Application approval and rejection rates were analyzed for applications classified as SLIK Best and Good.
The analysis calculated:
•	ACC percentage.
•	TACC percentage.
This analysis was used to evaluate application outcomes based on SLIK classification.
6. SQL Techniques and Functions
The SQL analysis utilized the following techniques and functions:
SQL Technique / Function	Application
CREATE TABLE	Creating cleaned datasets
CAST	Converting data types
SAFE_CAST	Handling invalid numeric conversions
CASE WHEN	Conditional data transformation
TRIM	Removing unnecessary whitespace
SPLIT	Extracting article group information
GROUP BY	Aggregating business data
COUNT / COUNT DISTINCT	Counting records and unique identifiers
SUM	Calculating aggregate metrics
CTE (WITH)	Structuring complex queries
LEFT JOIN	Combining advertising and chat data
UNION ALL	Combining overall and individual sales results
SAFE_DIVIDE	Performing safe division
COALESCE	Handling NULL values
7. Output
The SQL analysis produced cleaned datasets and aggregated analytical results that supported the subsequent Power BI data modeling, KPI calculations, and dashboard development.
