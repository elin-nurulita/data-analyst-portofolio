# Data Modeling — Power BI

## 1. Overview

Data modeling was performed in Power BI to integrate four cleaned datasets obtained from Google BigQuery: Ads, Chat, Artikel, and Pesanan.

The objective was to establish relationships between the datasets to support integrated business performance analysis and dashboard development.

## 2. Data Model Relationships

Three relationships were established between the four datasets:

| No. | Table Relationship | Relationship Key | Cardinality |
|---:|---|---|---|
| 1 | Ads – Chat | Campaign name – Content name | Many-to-Many (`*:*`) |
| 2 | Artikel – Chat | Kode Artikel – Content name | Many-to-Many (`*:*`) |
| 3 | Chat – Pesanan | Application number – No pengajuan | Many-to-One (`*:1`) |

## 3. Cross-Filter Direction

All three relationships were configured using **Both** cross-filter direction.

This configuration allows filters to propagate between related tables in both directions within the data model.

| Relationship | Cross-Filter Direction |
|---|---|
| Ads – Chat | Both |
| Artikel – Chat | Both |
| Chat – Pesanan | Both |

## 4. Data Model Structure

The Chat dataset serves as the central connecting table between advertising data, article data, and application records.

The relationships are structured as follows:

- **Ads – Chat:** Connected through Campaign name and Content name.
- **Artikel – Chat:** Connected through Kode Artikel and Content name.
- **Chat – Pesanan:** Connected through Application number and No pengajuan.

## 5. Analytical Purpose

The integrated data model supports cross-dataset analysis, including:

- Advertising performance and generated applications.
- SEO article performance and customer interactions.
- Customer engagement and order outcomes.
- Business performance and sales conversion analysis.

The resulting model serves as the foundation for DAX calculations, KPI development, and Power BI dashboard visualizations.

## 6. Data Model Validation

All three relationships were successfully established in Power BI.

The model was checked for relationship configuration issues, and no ambiguous relationship warnings were encountered during implementation.
