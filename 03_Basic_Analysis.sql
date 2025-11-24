
-- Total Products
SELECT COUNT(*) AS Total_Products
FROM zepto;

-- Products per Category
SELECT Category, COUNT(*)
FROM zepto
GROUP BY Category;

-- Out of stock items
SELECT Name, Category
FROM zepto
WHERE Out_of_Stock = 'TRUE';

-- Show only product names and their MRP.
SELECT Name, MRP
FROM zepto;
