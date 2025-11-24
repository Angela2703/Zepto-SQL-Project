
-- Inventory Value by Category
SELECT Category,SUM(Discounted_SP * Available_Quantity) AS Inventory_Value
FROM zepto
GROUP BY Category;

-- Average Discount by Category
SELECT Category, AVG(Discount_Percent) AS Avg_Discount
FROM zepto
GROUP BY Category;

-- Effective Discount
SELECT Name, ROUND((MRP - Discounted_SP)/MRP*100,2) AS Effective_Discount
FROM zepto;

-- List items where selling price is > 20% cheaper than MRP
SELECT Name,MRP,Discounted_SP
FROM zepto
WHERE (MRP - Discounted_SP)/MRP > 0.20; 

-- Show products cheaper than ₹2 per gram
SELECT Name,Discounted_SP, ROUND(Discounted_SP/Weight_in_Gms,2) AS Price_per_Gms
FROM zepto
WHERE Discounted_SP/Weight_in_Gms > 2;
