create database ECommerce_sales_report;
use ecommerce_sales_report;
#1. Monthly Revenue & Order Volume (Amazon Sales)
SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT `order id`) AS total_orders
FROM
    Amazon_Sale_Report
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    order_year ASC,
    order_month ASC;
#2. Yearly Sales Growth
SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT `order id`) AS total_orders
FROM
    Amazon_Sale_Report
GROUP BY
    EXTRACT(YEAR FROM date)
ORDER BY
    order_year ASC;
#3. Top 5 Months by Revenue
SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    SUM(amount) AS total_revenue
FROM
    Amazon_Sale_Report
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    total_revenue DESC
LIMIT 5;
#4. International Sales by Month
SELECT
    EXTRACT(YEAR FROM Date) AS sales_year,
    EXTRACT(MONTH FROM Date) AS sales_month,
    SUM(`Gross Amt`) AS total_gross_amount
FROM
    `international sale report`
GROUP BY
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY
    sales_year ASC,
    sales_month ASC;
#5. Revenue Contribution by Category (Amazon)
SELECT
    EXTRACT(YEAR FROM date) AS order_year,
    EXTRACT(MONTH FROM date) AS order_month,
    category,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT `order id`) AS total_orders
FROM
    Amazon_Sale_Report
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date),
    category
ORDER BY
    order_year ASC,
    order_month ASC,
    total_revenue DESC;
#6. Year-Month Trend (Combined Sales)
SELECT
    EXTRACT(YEAR FROM date) AS sales_year,
    EXTRACT(MONTH FROM date) AS sales_month,
    SUM(total_revenue) AS combined_revenue
FROM (
    -- Amazon Sales
    SELECT
        date,
        SUM(amount) AS total_revenue
    FROM
        Amazon_Sale_Report
    GROUP BY
        date
    
    UNION ALL
    
    -- International Sales
    SELECT
        Date AS date,
        SUM(`Gross Amt`) AS total_revenue
    FROM
        `international sale report`
    GROUP BY
        Date
) AS combined
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    sales_year ASC,
    sales_month ASC;
#7. Quarter-wise Sales
SELECT
    EXTRACT(YEAR FROM date) AS sales_year,
    EXTRACT(QUARTER FROM date) AS sales_quarter,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT `order id`) AS total_orders
FROM
    Amazon_Sale_Report
WHERE
    EXTRACT(YEAR FROM date) >= EXTRACT(YEAR FROM CURRENT_DATE) - 2 &
	`Date` is not null
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(QUARTER FROM date)
ORDER BY
    sales_year ASC,
    sales_quarter ASC;
#8. Revenue vs Orders Trend
SELECT
    EXTRACT(YEAR FROM date) AS sales_year,
    EXTRACT(MONTH FROM date) AS sales_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT `order id`) AS total_orders
FROM
    Amazon_Sale_Report
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    sales_year ASC,
    sales_month ASC;
 #9. Filter for Specific Period   
SELECT
    EXTRACT(MONTH FROM date) AS sales_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT `order id`) AS total_orders
FROM
    Amazon_Sale_Report
WHERE
    EXTRACT(YEAR FROM date) = 2021 &
    `date` is not null
GROUP BY
    EXTRACT(MONTH FROM date)
ORDER BY
    sales_month ASC;
#10. Top Customers in a Period
SELECT
    customer,
    SUM(`Gross Amt`) AS total_revenue,
    COUNT(DISTINCT Date) AS order_days
FROM
    `International Sale Report`
WHERE
    EXTRACT(YEAR FROM Date) = 2022
    & EXTRACT(QUARTER FROM Date) = 1
    & `date` is not null
GROUP BY
    customer
ORDER BY
    total_revenue DESC
LIMIT 10;
