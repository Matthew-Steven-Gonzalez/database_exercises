USE employees;


#GROUP BY and COUNT

SELECT DISTINCT first_name FROM employees;

SELECT first_name, last_name FROM employees GROUP BY first_name, last_name;

#GROUP BY VS DISTINCT

SELECT DISTINCT first_name, last_name FROM employees;

#COUNT

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees WHERE first_name = 'Parto';

SELECT first_name, COUNT(first_name) FROM employees GROUP BY first_name;

SELECT first_name, COUNT(*) FROM employees GROUP BY first_name;

#Pass the * through count to count it all. Its the easiest way.

SELECT first_name, COUNT(*) FROM employees GROUP BY first_name ORDER BY COUNT(*) DESC;

#Aliases / Cannot use WHERE with aliases / Avoid using strings to name colums for future proofing.

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees AS emp WHERE emp.last_name like '%ens' GROUP BY full_name, last_name ORDER BY last_name LIMIT 25;


