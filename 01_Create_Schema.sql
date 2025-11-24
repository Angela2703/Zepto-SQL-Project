
CREATE DATABASE project;
USE project;

CREATE TABLE zepto (Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category TEXT,
    Name TEXT,
    MRP INT,
    Discount_Percent INT,
    Available_Quantity INT,
    Discounted_SP INT,
    Weight_in_Gms INT,
    Out_of_Stock TEXT,
    Quantity INT
);

