-- EXERCISE-3

CREATE TABLE CUSTOMER(CUSTOMER_ID INT PRIMARY KEY NOT NULL,CUST_NAME VARCHAR(50) NOT NULL,CITY VARCHAR(30) NOT NULL,GRADE INT NOT NULL,SALESMAN_ID INT NOT NULL);
SELECT*FROM CUSTOMER;
INSERT INTO CUSTOMER VALUES(3002, 'Nick Rimando', 'New York', 100, 5001),(3007, 'Brad Davis', 'New York', 200, 5001),(3005, 'Graham Zus', 'California', 200, 5002),(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300, 5006),(3009, 'Geoff Cameron', 'Berlin', 90, 5003),(3003, 'Jozy Altidor', 'Moscow', 85, 5007),(3001, 'Brad Guzn', 'London', 95, 5005);

CREATE TABLE salesman (salesman_id INT PRIMARY KEY,name VARCHAR(50),city VARCHAR(50),commission DECIMAL(4,2));
select*from salesman;
INSERT INTO salesman VALUES (5001, 'James Hoog', 'New York', 0.15),(5002, 'Nail Knite', 'Paris', 0.13),(5005, 'Pit Alex', 'London', 0.11),(5000, 'Mc Lyon', 'Paris', 0.14),(5007, 'Paul Adam', 'Rome', 0.13),(5003, 'Lauson Hen', 'San Jose', 0.12);

-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city. The result should be ordered by ascending customer_id.
SELECT c.CUST_NAME, c.CITY AS CUSTOMER_CITY, c.GRADE, s.NAME AS SALESMAN_NAME, s.CITY AS SALESMAN_CITY FROM CUSTOMER c
INNER JOIN salesman s ON c.salesman_id = s.SALESMAN_ID
WHERE c.GRADE < 100
ORDER BY c.CUSTOMER_ID ASC;

