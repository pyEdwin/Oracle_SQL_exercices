--1 - Display the first name, last name, and package number for all customers whose last name is “King” (Customers table).
SELECT First_Name ,
       Last_Name ,
       pack_id
FROM customers
WHERE Last_Name = "king";


--2 - Display all the data from Packages table for packages whose speed is “5Mbps”.
SELECT * FROM packages
WHERE speed = "5Mbps";

--3 - Display the first name, last name, package number and monthly discount for all customers with monthly discount less than 30 (Customers table).
SELECT First_Name ,
       Last_Name ,
       pack_id,
       monthly_discount
FROM  Customers
WHERE monthly_discount < 30;