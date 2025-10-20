# shoe-warehouse-operational-efficiency-analysis

This project analyzes warehouse efficiency, error distribution, pickers performance, shift, and shipping methode efficiency using SQL, Python and Looker Studio

## Objectives
- Clean the warehouse operation dataset to ensure data accuracy, consistency and reability for futher analysis
- Perform EDA to identify insight and opportunies for optimizing the performance and efficiency of the operation
- Develop an interactive dashboard in Looker Studio

## Tools Used
- BigQuery (SQL)
- Python (Google Colab)
- Looker Studio (Dashboard Visualization)

## Key Insights
- USA accounts for 32% of total errors.
- Warehouse D shows low efficiency (2.01 items/min).
- Sea shipping contributes to most errors (3.92%).
- QC effectively flags all error orders (100% failed).

## Recommendations
- **Focus process improvement on Warehouse D** — use Warehouse A as a benchmark and redistribute A’s overload to D & E.  
- **Optimize picker efficiency** — assign Picker 10 as a role model; provide training for low performers (6 & 8); rebalance complex/US-bound orders.  
- **Shift optimization** — prioritize morning shifts for US orders, increase QC checks & supervision in evening shifts.  
- **Enhance QC & labeling accuracy** — strengthen preventive checks during picking and labeling to reduce failed QC.  
- **Shipping balance** — distribute volumes more evenly between Sea and Air methods to reduce bottlenecks.  

## Files
- `picking_data_sepatu.csv` → The dataset
- `Data_Cleaning_warehouse_operational_efficiency.ipnyb` → Data cleaning in Python  
- `(SQL)_EDA_warehouse_operational_efficiency.ipnyb` → All SQL queries for EDA
- `Report Warehouse Operational Efficiency by Elin Nurulita.pdf` → Full report presentation
- [Full Report (High Resolution on Google Drive](https://drive.google.com/file/d/15wG_XSQ8QT2u6bkr2YVaaR7q5dZRtT7G/view?usp=sharing)
- `dashboard_preview.png` → Dashboard snapshot  

## Dashboard Link
[View Interactive Dashboard on Looker Studio](https://lookerstudio.google.com/reporting/68a980b6-7b72-4570-bf80-95fbc3e20b4c)

