# USE join_test_db;

# SELECT roles.name as role_name, COUNT(roles.id)
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id
# GROUP BY roles.name;

USE employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) as 'Department Manager'
FROM employees
         JOIN dept_manager dm on employees.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) as 'Department Manager'
FROM employees
         JOIN dept_manager dm on employees.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01'
  AND gender = 'F'
ORDER BY dept_name;

SELECT title, COUNT(title) AS TOTAL
FROM titles
         JOIN dept_emp on titles.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd009'
  AND dept_emp.to_date LIKE '%9999%'
  AND titles.to_date LIKE '%9999%'
GROUP BY title;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) as 'Department Manager', s.salary as 'Salary'
FROM employees
         JOIN dept_emp de on employees.emp_no = de.emp_no
         JOIN salaries s on employees.emp_no = s.emp_no
         JOIN dept_manager dm on employees.emp_no = dm.emp_no
         JOIN departments d on d.dept_no = de.dept_no
    AND de.to_date LIKE '%9999%'
    AND s.to_date LIKE '%9999%'
    AND dm.to_date LIKE '%9999%'
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department Name', CONCAT(e2.first_name, ' ',e2.last_name) AS 'Manager'
FROM employees e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN dept_manager dm on d.dept_no = dm.dept_no AND dm.to_date > NOW()
JOIN employees e2 ON e2.emp_no =dm.emp_no
WHERE de.to_date > NOW()
ORDER BY dept_name;


