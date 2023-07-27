-- Cleaning a table 
USE classicmodels;
SELECT * FROM employees;
UPDATE `employees`
	SET jobTitle = "Sales Representative" 
    WHERE (jobTitle = "Sales Rep" AND employeeNumber<> 0);
SELECT * FROM employees;
SELECT * FROM offices;
SET foreign_key_checks=0;
DELETE FROM employees 
	WHERE (officecode = 7 AND jobTitle = "Sales Representative" and employeeNumber<>0);
SET foreign_key_checks=1;
SELECT * FROM employees;
SET foreign_key_checks=0;
UPDATE employees
	SET reportsTo = "1002"
	WHERE reportsTo IS NULL;
SET foreign_key_checks = 1;
SELECT * FROM employees;
ALTER TABLE employees
	ADD COLUMN name VARCHAR(30) AFTER employeeNumber;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET name = CONCAT (firstName, " ", lastName);
SELECT * FROM employees;
ALTER TABLE employees
	DROP COLUMN firstName,
    DROP COLUMN lastName;
SELECT * FROM employees;
