CREATE DATABASE company_db1;
use company_db1;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
INSERT INTO employees VALUES
(1, 'Amit', 25, 'IT', 50000, 'Pune'),
(2, 'Neha', 28, 'HR', 42000, 'Mumbai'),
(3, 'Rahul', 32, 'Finance', 65000, 'Pune'),
(4, 'Sneha', 24, 'IT', 48000, 'Nashik'),
(5, 'Rohit', 30, 'Marketing', 55000, 'Mumbai'),
(6, 'Anita', 27, 'HR', 40000, 'Pune'),
(7, 'Suresh', 35, 'Finance', 70000, 'Delhi'),
(8, 'Pooja', 23, 'IT', 45000, 'Mumbai');
SELECT * FROM employees;

select department, count(salary) from employees where age>25 group by department;
select city, count(emp_name) from employees group by city;

select department, count(emp_name) from employees group by department;
select city, sum(salary) from employees group by city;
select department, avg(salary) from employees group by department;
select city, max(salary) from employees group by city;
select department, min(age) from employees group by department;
select city, count(emp_name) from employees group by city;
select department, sum(salary) from employees group by department;
select department, count(emp_name) from employees where age>25 group by department;
select city, avg(salary) from employees where city="pune" group by city;
select department, max(salary) from employees where department="it" group by department;
select city, sum(salary) from employees where salary>45000 group by city;
select city, min(age) from employees where city != "mumbai" group by city;
select department, avg(salary) from employees where city in ("pune","mumbai") group by department;
select department, sum(salary) from employees where age>30 and city != "delhi" group by department;
select city, count(emp_name) from employees where salary between 40000 and 70000 group by city;
select department, max(salary) from employees where emp_name like "a%"group by department;
select city, avg(salary) from employees where department in ("hr","finance") group by city;
select department, sum(salary) from employees where emp_name not like "%o%" group by department;
select department, avg(salary) from employees where (age between 25 and 40) and city!="pune" and department in ("it","finance") group by department;

select city, count(emp_name) from employees group by city;
select department, max(salary) from employees group by department;
select city, min(age) from employees group by city;
select department, sum(salary) from employees group by department;
select city, avg(salary) from employees group by city;
select department, count(emp_name) from employees where age>28 group by department;
select department, avg(salary) from employees where city="mumbai" group by department;
select city, sum(salary) from employees where salary<60000 group by city;
select department, max(salary) from employees where emp_name like "s%" group by department;
select city, count(emp_name) from employees where department in ("it","hr") group by city;
select city, avg(salary) from employees where city != "pune" group by city;
select department, count(emp_name) from employees where emp_name not like "%e%" group by department;
select department, min(age) from employees where salary>45000 and city != "mumbai" group by department;
select department, avg(salary) from employees where city in ("pune","nashik") and age>25 group by department;

select department, sum(salary) from employees where age>32 group by department;
select city, count(emp_name) from employees where salary>60000 group by city;
select department, avg(salary) from employees where city in ("pune","mumbai") group by department;
select city, max(salary) from employees where department="finance" group by city;
select department, min(age) from employees where emp_name like "a%" group by department;
select department, count(emp_name) from employees where emp_name like "%o%" group by department;
select city, sum(salary) from employees where age between 26 and 40 group by city;
select department, avg(salary) from employees where city != "pune" group by department;
select department, max(salary) from employees where salary between 50000 and 70000 group by department;
select department, sum(salary) from employees where city != "delhi" and age>28 and emp_name not like "r%" group by department;

select*from employees where city in ("pune","mumbai") and (salary>65000 or age<25) and emp_name not like "%i%";
select*from employees where department != "hr" order by salary desc limit 3;
select department, count(emp_name) from employees where salary between 45000 and 70000 group by department;
select*from employees where emp_name like "s%" and city != "delhi" and salary not between 50000 and 55000;
select city, sum(salary) from employees where city in ("pune","mumbai","nashik") group by city order by salary desc;
select*from employees city != "pune" and (age>35 or salary>70000) o