DAX Measures & KPI Documentation
1. Overview
DAX (Data Analysis Expressions) was used in Power BI to develop business performance metrics and KPIs across the integrated datasets.
The measures were designed to evaluate advertising expenditure, generated results, customer engagement, application performance, and sales conversion.
A total of 10 DAX measures were developed for the Business Performance Analytics project.
2. Measure Inventory
No.	Measure Name	Data Source	Business Definition
1	Total Costs	Ads	Total advertising expenditure.
2	Total Results	Ads	Total results generated from advertising activities.
3	Cost per Result (Message)	Ads	Average advertising cost per generated result.
4	Chat Respon	Chat	Number of distinct discussions that received a response.
5	PESANAN	Chat	Number of nonblank application number records.
6	Delivered order	Pesanan	Number of distinct applications with CLSD status.
7	Chat to Order Conversion	Chat & Chat Response	Ratio of application records to responded discussions.
8	Indent	Pesanan	Number of distinct applications with INDT status.
9	% ACC	Pesanan	Percentage of applications with ACC survey status.
10	% TACC	Pesanan	Percentage of applications with TACC survey status.
3. DAX Formulas and Calculation Logic
3.1 Total Costs
Business Definition: Total advertising expenditure.
Total Costs =
SUM(ads_clean[Act cost])
Calculation Logic: Sums all advertising costs recorded in the Ads dataset.
3.2 Total Results
Business Definition: Total results generated from advertising activities.
Total Results =
SUM(ads_clean[Results])
Calculation Logic: Aggregates the total advertising results recorded in the Ads dataset.
3.3 Cost per Result (Message)
Business Definition: Average advertising cost required to generate one result/message.
Cost per Result (Message) =
DIVIDE([Total Costs], [Total Results], 0)
Calculation Logic: Divides total advertising expenditure by the total number of generated results. DIVIDE is used to handle zero denominators.
3.4 Chat Respon
Business Definition: Number of distinct discussions that received a response.
Chat Respon =
CALCULATE(
    DISTINCTCOUNT(chat_clean[Discussion id]),
    chat_clean[Fu category] <> "Tidak Respon"
)
Calculation Logic: Counts distinct discussion IDs, excluding records categorized as "Tidak Respon".
3.5 PESANAN
Business Definition: Number of nonblank application number records in the Chat dataset.
PESANAN =
COUNT(chat_clean[Application number])
Calculation Logic: Counts nonblank values in the Application number column. The measure uses COUNT rather than DISTINCTCOUNT.
3.6 Delivered Order
Business Definition: Number of distinct applications with completed/closed order status.
Delivered order =
CALCULATE(
    DISTINCTCOUNT(pesanan_clean[No pengajuan]),
    pesanan_clean[Status PK] = "clsd"
)
Calculation Logic: Counts distinct application numbers where the order status is CLSD.
3.7 Chat to Order Conversion
Business Definition: Percentage of responded discussions converted into application records.
Chat to Order Conversion =
DIVIDE(
    [PESANAN],
    [Chat Respon],
    0
)
Calculation Logic: Divides the number of application records by the number of responded discussions.
3.8 Indent
Business Definition: Number of distinct applications with indent status.
Indent =
CALCULATE(
    DISTINCTCOUNT(pesanan_clean[No pengajuan]),
    pesanan_clean[Status PK] = "indt"
)
Calculation Logic: Counts distinct application numbers categorized as INDT.
3.9 % ACC
Business Definition: Percentage of applications with an approved survey result (ACC).
% ACC =
DIVIDE(
    CALCULATE(
        DISTINCTCOUNT('pesanan_clean'[No pengajuan]),
        pesanan_clean[Status Survey] = "ACC"
    ),
    DISTINCTCOUNT(pesanan_clean[No pengajuan]),
    0
)
Calculation Logic: Divides the number of distinct applications with ACC survey status by the total distinct applications.
3.10 % TACC
Business Definition: Percentage of applications with a rejected survey result (TACC).
% TACC =
DIVIDE(
    CALCULATE(
        DISTINCTCOUNT('pesanan_clean'[No pengajuan]),
        pesanan_clean[Status Survey] = "TACC"
    ),
    DISTINCTCOUNT(pesanan_clean[No pengajuan]),
    0
)
Calculation Logic: Divides the number of distinct applications with TACC survey status by the total distinct applications.
4. KPI Categories
The developed measures can be grouped into four analytical categories:
KPI Category	Measures
Advertising Performance	Total Costs, Total Results, Cost per Result (Message)
Customer Engagement	Chat Respon
Application Performance	PESANAN, Delivered order, Indent
Conversion & Approval Performance	Chat to Order Conversion, % ACC, % TACC
5. Implementation Notes
•	The DIVIDE function was used for ratio calculations to handle division by zero.
•	DISTINCTCOUNT was applied to discussion IDs and application numbers where unique identification was required.
•	COUNT was used for the PESANAN measure to count nonblank application number records in the Chat dataset.
•	The Chat-to-Order Conversion, % ACC, and % TACC measures should be formatted as percentages in Power BI.
6. Output
The DAX measures provide the calculated KPIs used in the Business Performance, Ads Performance, and SEO & Sales Performance dashboards.
These measures support the evaluation of advertising efficiency, customer engagement, application status, and sales conversion performance.
