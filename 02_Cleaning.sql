
-- Missing Value Check
SELECT * FROM zepto
WHERE Category IS NULL 
OR Name IS NULL
OR MRP IS NULL;

-- Remove Duplicates
DELETE z1 FROM zepto z1
JOIN zepto z2 ON z1.Name = z2.Name
AND z1.Weight_in_Gms = z2.Weight_in_Gms
AND z1.Product_ID > z2.Product_ID;

-- Pricing errors
SELECT * FROM zepto
WHERE Discounted_SP > MRP;

