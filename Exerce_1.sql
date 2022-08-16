--1 - Create a query to display the customer number, first name, last name, primary phone number, secondary phone number and package number (Customers table).
SELECT Customer_id , 
       First_Name , 
       Last_Name , 
       main_phone_num , 
       secondary_phone_num , 
       pack_id
FROM customers;


--2 - Create a query to display first name, last name, join date, monthly discount, monthly discount after an addition of 20% and monthly discount after a reduction of 20%  (Customers table).
-- DA( monthly discount after an addition of 20%) = 1.4
--DR(montly discount after a reduction of 20%) = DA / 2 = 0.7
SELECT First_Name , 
       Last_Name , Join_Date , 
       monthly_discount * 1.4 DA ,  
       monthly_discount * 0.7 DR
FROM customers;


--3 - Create a query to display the package number, speed, strt_date (the date when the package became available), monthly payment, and monthly payment * 12, name the last column “YearlyPayment” (Packages table).
SELECT pack_id , 
       speed , 
       strt_date , 
       monthly_payment , 
       monthly_payment *12 AS YearlyPayment
FROM packages;

--4 - Create a query to display the last name concatenated with the first name, separated by space, and main phone number concatenated with secondary phone number, separated by comma and space. Name the column heading FULL_NAME and CONTACT_DETAILS respectively. (Customers table)
SELECT First_Name || ' ' || Last_Name AS FULL_NAME ,
       main_phone_num || ', '  || secondary_phone_num AS  CONTACT_DETAILS
FROM Customers;

--5 - Create a query to display unique cities from the Customers table.
SELECT DISTINCT City
FROM customers;

--6 - Create a query to display unique states from the Customers table.
SELECT DISTINCT State 
FROM customers;

--7 - Create a query to display unique combination of cities and states from Customers table.
SELECT DISTINCT  City , 
                 State 
FROM customers;

--8 - Create a query to display the last name concatenated with the state, separated by space. Name this column CUSTOMER_AND_STATE (Customers table)
SELECT Last_Name || ' ' || State AS CUSTOMER_AND_STATE
FROM customers;

--9 - Create a query to display the first name, last name, monthly discount and city concatenated with street, separated by space.  Name the column headings: FN, LN, DC and FULL_ADDRESS respectively (Customers table).
SELECT First_Name AS FN , 
       Last_Name AS LN , 
       monthly_discount AS DC 
       City || ' ' || Street AS FULL_ADDRESS
FROM customers;

--10 - Create a query to display unique monthly discounts in Customers table.
SELECT DISTINCT monthly_discount
FROM customers;

--11 - Create a query to display unique monthly discounts in Customers table.
SELECT DISTINCT pack_id
FROM customers;
