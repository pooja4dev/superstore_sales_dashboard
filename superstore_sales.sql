create database superstore_analytics;
use superstore_analytics;

CREATE TABLE customers AS
SELECT DISTINCT 
    `Customer ID` AS customer_id,
    `Customer Name` AS customer_name,
    Segment AS segment,
    Country AS country,
    City AS city,
    State AS state,
    `Postal Code` AS postal_code,
    Region AS region
FROM superstore_raw;

CREATE TABLE products AS
SELECT DISTINCT 
    `Product ID` AS product_id,
    Category AS category,
    `Sub-Category` AS sub_category,
    `Product Name` AS product_name
FROM superstore_raw;

CREATE TABLE orders AS
SELECT 
    `Row ID` AS row_id,
    `Order ID` AS order_id,
    `Order Date` AS order_date,
    `Ship Date` AS ship_date,
    `Ship Mode` AS ship_mode,
    `Customer ID` AS customer_id,
    `Product ID` AS product_id,
    Sales AS sales,
    Quantity AS quantity,
    Discount AS discount,
    Profit AS profit
FROM superstore_raw;





















