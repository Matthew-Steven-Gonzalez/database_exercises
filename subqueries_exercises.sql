USE employees;

SELECT first_name, last_name
FROM employees AS e
WHERE e.hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
          );

SELECT DISTINCT title
FROM titles AS t
WHERE t.emp_no IN (
    SELECT emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    AND gender = 'F'
    );