show databases;
create database IF NOT EXISTS mindsprint;
use mindsprint;

create table employee(
id INT primary key,
name varchar(30),
department varchar(100),
salary decimal(10,2));

alter table employee
add column position varchar(100);

describe employee;

insert into employee values('1','nidhi','digital','89000','jr Eng');
insert into employee values('2','Solle','digital','86000','data analyst');
insert into employee values('3','sanj','SAP','80000','Testing');
insert into employee values('4','Sadhu','App','84000','dev');
insert into employee values('5','anagha','Testing','81000','automation');



update employee set salary=99000 where id=1;

delete from employee where id=2;

-- truncate means it recreates the tabel
truncate table employee;

-- delete the entire table
drop table employee;


-- create table using extrass

create table employees(id int primary key auto_increment,
name varchar(100), position varchar(100), department varchar(100), salary decimal(10, 2)
);
 
insert into employees(name,position,department,salary) values
('Nidhi','jr Developer','DIGITAL',60000),
('benak','Sr Developer','IT',90000),
('Manoj','Dev ','DIGITAL',99000),
('Madan','testing ','App dev',80000),
('Hanvik','HR','DIGITAL',90000);
select * from employees;

-- select usecase--->>>>
-- single column retrival
select name,position from employees;

-- concat
select concat('John','','Doe') as fullname;

select now() today;
select upper('helloe world') as 'Upper Case';

-- Where Clause-->>
-- retrive data of employees whose salary is equal to 50000
select *
from employees
where salary>50000;

-- retrive data of employees whose salary is equal to 100000
select *
from employees
where salary=100000;


-- retrive data of employees whose id is 4
select *
from employees
where id=4;

-- retrive data of employees whose name is alex
select *
from employees
where name='Hanvik';

-- retrive data of employees whose salary is between 30000 to 70000
select *
from employees
where 30000<= salary <=70000;

-- order by

-- order by salary in ascending order
 select *
 from employees
 order by salary asc
 
 -- order by name in desc
 select *
 from employees
 order by name desc;
 
  select *
 from employees
 order by salary desc limit 1;
 
 -- order by dept asc and salary by desc
  select *
 from employees
 order by department asc,
 salary desc;
 
 -- FLTER DATA 
 -- who works in IT

  select *
 from employees
 where department='IT';
 
 -- emp works in sales or IT USE OF (OR)
 
  select *
 from employees
 where department ='IT' OR  department ='DIGITAL';
 
 -- use of IN and NOT IN 
 select *
 from employees
 where department in ('IT','DIGITAL');
 
 select *
 from employees
 where department  not in ('IT','DIGITAL');
 
 -- USE OF (AND)
  select *
 from employees
  where department ='IT' AND  salary>70000;
 
 -- BETWEEN
   select *
 from employees
  where salary BETWEEN 60000 AND 90000;
  
  -- LIKE NAME starts with N and followed by any pther alphabets
     select *
 from employees
  where NAME LIKE 'N%'; 
 
 -- %na% means befor and after na
       select *
 from employees
  where NAME LIKE '%na%'; 
  



