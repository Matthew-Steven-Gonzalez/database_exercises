USE employees;

SELECT CONCAT('Hello ', 'CodeUp', '!');

SELECT CONCAT( first_name, ' ' ,last_name) AS 'Name' FROM employees;

SELECT CURRENT_DATE;

SELECT CURDATE();

SELECT CURTIME();

SELECT UNIX_TIMESTAMP();

SELECT UNIX_TIMESTAMP('1958-05-28');

SELECT UNIX_TIMESTAMP('1990-09-19');

SELECT UNIX_TIMESTAMP('2038-09-19');

SELECT NOW();

SELECT *
FROM employees
WHERE month(birth_date) = 1
  AND day(birth_date) = 26;