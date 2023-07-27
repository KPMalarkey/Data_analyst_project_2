-- Finding most expensive product in "Planes"
USE classicmodels;
SELECT *
	FROM products
    WHERE productLine = "Planes"
    ORDER BY MSRP desc;


-- Finding top 10 products based on profit margin
SELECT *, (MSRP - buyPrice) AS profitMargin 
	FROM products
	ORDER BY profitMargin desc LIMIT 10;

-- Finding top 5 customer payments by customer name
SELECT customers.customerName, payments.paymentDate, payments.amount
	FROM customers
    INNER JOIN payments ON customers.customerNumber = payments.customerNumber
    ORDER BY payments.amount desc LIMIT 5;
