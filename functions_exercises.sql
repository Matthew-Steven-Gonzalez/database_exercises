USE employees;

# SELECT * FROM employees WHERE first_name IN ('Irena','Vidya', 'Maya') ORDER BY  first_name;
#
# SELECT * FROM employees WHERE first_name IN ('Irena','Vidya', 'Maya') ORDER BY  first_name, last_name;
#
# SELECT * FROM employees WHERE first_name IN ('Irena','Vidya', 'Maya') ORDER BY  last_name, first_name;
#
# SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no;
#
# SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employees''s Full Name' FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE birth_date LIKE '%12-25';

SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

SELECT first_name AS 'First Name', last_name AS 'Last Name', DATEDIFF(now(),hire_date) AS 'Working days'  FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND YEAR(hire_date) >= 1990 ;

SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAY(birth_date) = 25
ORDER BY birth_date, hire_date DESC;







