SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees JOIN salaries on employees.emp_no = salaries.emp_no;
-----------------------------------------------------------------------------------------------------
----2
SELECT first_name, last_name, hire_date
FROM employees
WHERE
hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';
------------------------------------------------------------------------------------------------------
------3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;
------------------------------------------------------------------------------------------------------
--------4
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;
-------------------------------------------------------------------------------------------------------
----------5
SELECT first_name, last_name, sex
FROM employees
WHERE
first_name = 'Hercules'
AND last_name LIKE 'B%';
--------------------------------------------------------------------------------------------------------
------------6
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';
--------------------------------------------------------------------------------------------------------
--------------7
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';
---------------------------------------------------------------------------------------------------------
----------------8
SELECT last_name, COUNT (last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;
