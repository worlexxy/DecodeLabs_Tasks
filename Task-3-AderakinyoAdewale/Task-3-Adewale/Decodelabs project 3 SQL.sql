CREATE TABLE e_commerce (
    OrderID VARCHAR(50),
    Date DATE,
    CustomerID VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice VARCHAR(50),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice VARCHAR(50),
    Extra_Comma VARCHAR(50)
);

SELECT * FROM e_commerce

-- To delete the extra column that was giving me error while loading in my excel file
ALTER TABLE e_commerce  
DROP COLUMN Extra_Comma;

SELECT * FROM e_commerce
---- Query 1: Total Order and Total Revenue using COUNT AND SUM

SELECT 
    COUNT(OrderID) AS Total_Orders,
    SUM(REPLACE(REPLACE(TotalPrice, '$', ''), ',', '')::NUMERIC) AS Total_Revenue
FROM e_commerce

---- Query 2: Segmenting Data (Shipped Orders)
-- Filter rows using the WHERE clause to focus only on orders that have successfully shipped.

SELECT 
    OrderID, 
    Date, 
    Product, 
    Quantity, 
    UnitPrice, 
    TotalPrice, 
    OrderStatus
FROM e_commerce
WHERE OrderStatus = 'Shipped';

---- Query 3: Product Performance Analysis
--- Group total items sold and revenue by specific product names using GROUP BY.

SELECT 
    Product,
    COUNT(OrderID) AS Items_Sold,
    SUM(REPLACE(REPLACE(TotalPrice, '$', ''), ',', '')::NUMERIC) AS Category_Revenue
FROM e_commerce
GROUP BY Product
ORDER BY Category_Revenue DESC

-- Querry 4: To calculate the average amount spent per transaction, we use the AVG() function. 

SELECT 
    AVG(REPLACE(REPLACE(TotalPrice, '$', ''), ',', '')::NUMERIC) AS Average_Order_Value
FROM e_commerce;

SELECT * FROM e_commerce


















