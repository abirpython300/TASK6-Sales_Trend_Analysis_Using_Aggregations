# TASK6-Sales_Trend_Analysis_Using_Aggregations
Analyze monthly revenue and order volume.
E-Commerce Sales Analysis Project
Project Overview

This project involves a comprehensive analysis of an E-Commerce Sales Dataset consisting of multiple CSV files. The goal is to analyze and maximize online business performance by examining sales trends, profitability, customer behavior, inventory, and operational efficiency across multiple sales channels.

The dataset includes Amazon, International, and other sales reports, along with pricing, inventory, P&L, and expense data. SQL queries were used to extract insights such as monthly revenue trends, top customers, and category-wise contributions.

Dataset Description

The dataset contains the following 7 CSV files:

Amazon Sale Report

Tracks Amazon orders and fulfillment.

Key columns: order_id, date, status, fulfillment, sales channel, sku, category, amount, qty.

Cloud Warehouse Comparison Chart

Compares warehouse/logistics providers.

Key columns: Shiprocket, INCREF.

Expense IIGF

Contains expense and received amount details.

Key columns: Received amount, Expance.

International Sale Report

Tracks international sales transactions.

Key columns: Date, customer, SKU, PCS, Gross Amount.

May-2022

Pricing details across multiple marketplaces for May 2022.

Key columns: SKU, StyleID, Catalog, category, TP, MRP, Marketplace MRP.

P & L March 2021

Profit & Loss statement for March 2021.

Key columns: SKU, StyleID, TP, MRP, Marketplace MRP.

Sale Report

Inventory and product details.

Key columns: SKU CODE, Design No, Stock, category, size, color.

Analysis Performed

SQL queries were used to answer key business questions:

Monthly Revenue & Order Volume – Identify months generating the highest revenue and number of unique orders.

Yearly Sales Growth – Track revenue and order growth per year.

Top 5 Months by Revenue – Determine the best performing months.

International Sales by Month – Analyze monthly international revenue trends.

Revenue Contribution by Category – Identify product categories generating the most revenue per month.

Year-Month Trend (Combined Sales) – Combine Amazon and International sales for monthly revenue trends.

Quarter-wise Sales – Summarize quarterly revenue and order volume for the last two years.

Revenue vs Orders Trend – Compare revenue growth against order volume.

Filter for Specific Period – Focused analysis for 2021 monthly revenue.

Top Customers in a Period – Identify highest revenue-generating international customers in Q1 2022.

Tools & Technologies

Database / SQL: Used for querying, aggregating, and analyzing sales data.

CSV Files: Source data format.

Optional: Python / Pandas / Excel for pre-processing or visualization.

Key Insights

Identified top-performing months and channels.

Highlighted high-revenue product categories.

Determined top customers contributing to international sales.

Analyzed quarterly and monthly trends to track business growth.

Enabled data-driven decision making for pricing, inventory, and logistics.

Project Structure
E-Commerce-Sales-Analysis/
│
├── Amazon_Sale_Report.csv
├── Cloud_Warehouse_Comparison_Chart.csv
├── Expense_IIGF.csv
├── International_Sale_Report.csv
├── May-2022.csv
├── P&L_March_2021.csv
├── Sale_Report.csv
└── README.md

How to Run

Load the CSV files into your SQL database (MySQL, PostgreSQL, or SQLite).

Run the provided SQL queries to generate reports and metrics.

Optional: Export query results to Excel or visualization tools (Power BI, Tableau) for dashboards.

Conclusion

This project demonstrates end-to-end e-commerce sales analysis using multi-source data. The analysis helps businesses understand sales trends, revenue drivers, customer behavior, and operational efficiency, enabling better strategic decision-making.

#1. Monthly Revenue & Order Volume (Amazon Sales)
<img width="594" height="138" alt="image" src="https://github.com/user-attachments/assets/e7f77a3f-aac8-47de-aaf1-20071e159f9d" />
#2. Yearly Sales Growth
<img width="461" height="116" alt="image" src="https://github.com/user-attachments/assets/d4037bd6-9f57-483a-843a-e2faba220648" />
#3. Top 5 Months by Revenue
<img width="463" height="117" alt="image" src="https://github.com/user-attachments/assets/9b462df7-7d43-44bf-aaf6-15b7b80ece4d" />
#4. International Sales by Month
<img width="444" height="195" alt="image" src="https://github.com/user-attachments/assets/df631a09-ad5b-4e6f-b6fb-9ac7a74b190a" />
#5. Revenue Contribution by Category (Amazon)
<img width="689" height="186" alt="image" src="https://github.com/user-attachments/assets/504671a5-5f06-4e0b-9505-63d979cb0b33" />
#6. Year-Month Trend (Combined Sales)
<img width="456" height="375" alt="image" src="https://github.com/user-attachments/assets/d880b49a-0570-4c86-8696-9bef44d22e9f" />
#7. Quarter-wise Sales
<img width="653" height="72" alt="image" src="https://github.com/user-attachments/assets/ca960a81-bb79-40fa-a8fd-3a94dde7652a" />
#8. Revenue vs Orders Trend
<img width="556" height="130" alt="image" src="https://github.com/user-attachments/assets/5327e3b2-3f17-4d2e-9a3c-6de5b1664374" />
#9. Filter for Specific Period   
<img width="469" height="86" alt="image" src="https://github.com/user-attachments/assets/45f503ca-0752-4927-8ea9-71c713031734" />
#10. Top Customers in a Period
<img width="656" height="305" alt="image" src="https://github.com/user-attachments/assets/2a123bfa-bf43-4dfc-a97d-393b37ccf9d5" />









