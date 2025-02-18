use employees;
show tables;
select * from employees limit 5;

-- 1.Retrieve the first name, last name, and job title of all employees.
SELECT e.first_name, e.last_name, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no;

-- 2.Find all employees who work in the Sales department.

SELECT e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 5.Retrieve the total number of employees in each department.
SELECT d.dept_name, COUNT(e.emp_no) AS total_employees
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
GROUP BY d.dept_name;

-- 6.Retrieve departments with more than 5 employees.
SELECT departments.dept_name, COUNT(*) AS total_employees
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
GROUP BY departments.dept_name
HAVING COUNT(*) > 5;

-- 4.Calculate the average salary of all employees.
SELECT AVG(s.salary) AS average_salary
FROM salaries s;
-- 3.List all products sorted by product name in ascending order
SELECT AVG(s.salary) as 'Average Salary'
FROM employees e
JOIN salaries s ON s.emp_no = e.emp_no;




