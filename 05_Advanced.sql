
-- Rank products by discount (within category)
SELECT Category, Name, Discount_Percent,
	RANK() OVER(PARTITION BY Category ORDER BY Discount_Percent DESC) AS Discount_Rank
FROM zepto;

-- Overpriced items
SELECT * FROM zepto
WHERE Discounted_SP > MRP;

-- Price per Gram
SELECT Name, Category, ROUND(Discounted_SP/Weight_in_Gms,2) AS Price_per_Grams
FROM zepto
ORDER BY Discounted_SP/Weight_in_Gms DESC;

-- Show top 3 highest-MRP items per category
SELECT * FROM (
		SELECT Name, Category, MRP,
        DENSE_RANK() OVER(PARTITION BY Category ORDER BY MRP DESC) AS Ranked
		FROM zepto
) AS rnk WHERE Ranked <=3;

-- Find category-wise highest and lowest discounted selling price
SELECT Category,
	MAX(Discounted_SP) AS Highest_SP,
    MIN(Discounted_SP) AS Lowest_SP
FROM zepto
GROUP BY Category;

-- Calculate the total discount amount for each product
SELECT Name, MRP, Discounted_SP,
		(MRP-Discounted_SP) AS Discount_Amount
FROM zepto;

-- Find the product with the maximum profit margin
SELECT Name, (MRP-Discounted_SP) AS Margin
FROM zepto
ORDER BY Margin DESC
LIMIT 1;

-- Find the products with the lowest margin
WITH margin_calc AS (
    SELECT Name,MRP,Discounted_SP,(MRP - Discounted_SP) AS Margin,
        RANK() OVER (ORDER BY (MRP - Discounted_SP)) AS Margin_Rank
    FROM zepto
)
SELECT * FROM margin_calc
WHERE Margin_Rank = 1;
