-- pk and fk

create database sample;
use sample;
CREATE TABLE departments ( 
id INT PRIMARY KEY, 
name VARCHAR(100) 
NOT NULL);

INSERT INTO departments (id, name) 
VALUES 
(1, 'Sales'), 
(2, 'R&D'), 
(3, 'Marketing'), 
(4, 'Finance'), 
(5, 'Human Resources');

-- verify the inserted data
select * from departments;

-- create employee table which makes many to one relationship
 -- btw dept and employees
 -- one dept have many emp
 
CREATE TABLE employees ( 
id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
position VARCHAR(100) NOT NULL, 
salary DECIMAL(10, 2), 
department_id INT, 
FOREIGN KEY (department_id) REFERENCES departments(id) );

desc employees;

INSERT INTO employees 
(id, name, position, salary, department_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);


drop table employees;
CREATE TABLE EMPLOYEES
(id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
position VARCHAR(100) NOT NULL, 
salary DECIMAL(10, 2), 
departments_id INT, 
FOREIGN KEY (departments_id) 
REFERENCES departments(id) );
 
DESCRIBE EMPLOYEES;
INSERT INTO EMPLOYEES
(id, name, position, salary, departments_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);

select * from employees;
-- inner join 
select e.id,e.name,e.position Designation,e.salary,d.name 'Department Name'
 from employees e join departments d on e.departments_id=d.id;
 
 -- lets insert one record in employee table without department_id
 insert into employees(id,name,position,salary,departments_id) values(9,'test user','testing',45678,NULL);
 
 -- left join to take common details as well as values from the left table 
 -- select e.id,e.name,e.position Designation,e.salary,d.name
 SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
LEFT JOIN departments ON employees.departments_id = departments.id;

-- right join 

SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
RIGHT JOIN departments ON employees.departments_id = departments.id;

-- execute full join that is left and right join using UNION Note->while joining remove semi colon from left join part
 SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
LEFT JOIN departments ON employees.departments_id = departments.id
UNION
SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
RIGHT JOIN departments ON employees.departments_id = departments.id;

-- CROSS JOIN
SELECT employees.id AS employee_id, employees.name AS employee_name, 
departments.id AS departmentS_id, departments.name AS department_name
FROM employees
CROSS JOIN departments;

select count(*) "No of Employees",departments_id from employees
group by departments_id;

-- total sum of salary based 
SELECT departments.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN departments ON employees.departments_id = departments.id
GROUP BY departments.name;

-- having 
SELECT departments.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN departments ON employees.departments_id = departments.id
GROUP BY departments.name
HAVING SUM(employees.salary) > 100000;

-- list the department which is having more than 2 employees
SELECT dep.name "DepartmentName", COUNT(emp.id) AS 
employee_count
FROM employees emp
JOIN departments dep ON emp.departments_id = dep.id
GROUP BY dep.name
HAVING COUNT(emp.id) > 2;

-- roll up
SELECT departments.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN departments ON employees.departments_id = departments.id
GROUP BY 
departments.name with rollup;

-- ACID PROP
CREATE TABLE Accounts (
 account_id VARCHAR(10) PRIMARY KEY,
 account_name VARCHAR(100),
 balance DECIMAL(10, 2)
);
INSERT INTO Accounts (account_id, account_name, balance) 
VALUES
('A001', 'Alice', 1000.00),
('A002', 'Bob', 1500.00),
('A003', 'Charlie', 2000.00);

select * from Accounts;

Begin;
update Accounts set balance=balance+100 where account_id='A001';
update Accounts set balance=balance-100 where account_id='A002';

COMMIT;
select * from Accounts;
-- save point -- 
Begin;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001';
SAVEPOINT sp1;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A002';

rollback to sp1;
commit;

select * from Accounts;

DELIMITER //
CREATE PROCEDURE GetAllAccounts()
BEGIN
 SELECT * FROM Accounts;
END //
DELIMITER ;





