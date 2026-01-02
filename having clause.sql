CREATE DATABASE company_db2;
use company_db2;
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

select department,avg(salary) from employees group by department having avg(salary)>50000;
select city, sum(salary) from employees group by city having sum(salary)>100000;
select department, count(*) from employees group by department having count(*)>2;
select city, max(salary) from employees group by city having max(salary)>60000;
select department, min(salary) from employees group by department having min(salary)<45000;
select department, avg(salary) from employees where age>25 group by department having avg(salary)>48000;
select city, sum(salary) from employees where salary>40000 group by city having sum(salary)>90000;
select department, count(*) from employees where city in ("pune","mumbai") group by department having count(*)>1;
select city, avg(salary) from employees where city != "delhi" group by city having avg(salary)>45000;
select department, max(salary) from employees where salary between 45000 and 70000 group by department having max(salary)<=65000;
select department, sum(salary) from employees where age>28 group by department having sum(salary)>120000;
select city, count(*) from employees where emp_name not like "%a%" group by city having count(*)>1; 
select department, avg(salary) from employees where city != "pune" group by department having avg(salary)>50000;
select city, max(salary),count(*) from employees where salary>45000 group by city having max(salary)>70000 and count(*)>1;
select department, avg(salary),sum(salary) from employees where (age between 26 and 40) and city!="delhi" group by department having avg(salary)>55000 and sum(salary)>100000;

select department, avg(salary) from employees group by department having avg(salary)>55000;
select city, sum(salary) from employees group by city having sum(salary)>150000;
select department, count(*) from employees group by department having count(*)>2;
select city, max(salary) from employees group by city having max(salary)>70000;
select department, min(salary) from employees group by department having min(salary)<40000;
select department, avg(salary) from employees where age>30 group by department having avg(salary)>50000;
select city, sum(salary) from employees where salary>45000 group by city having sum(salary)>100000;
select department, count(*) from employees where city in ("pune","mumbai") group by department having count(*)>1;
select city, avg(salary) from employees where city!="delhi" group by city having avg(salary)>48000;
select department, avg(salary), sum(salary) from employees where (age between 28 and 45) and city!="delhi" group by department having avg(salary)>60000 and sum(salary)>150000;

select*from employees where city in ("pune","mumbai") and (salary>65000 or age<26) and emp_name not like "%i%";
select*from employees where department!="HR" order by salary asc limit 3;
select department, count(*) from employees where salary between 45000 and 70000 group by department having count(*)>1;
select*from employees where emp_name like "A%" and city!="delhi" and (salary not between 50000 and 55000);
select city, sum(salary) from employees where city in ("pune","mumbai","nashik") group by city having sum(salary)>100000 order by sum(salary) desc;
select*from employees where city!="pune" and (age>35 or salary>70000) order by salary desc limit 2;
select department, avg(salary) from employees where emp_name not like "%e%" group by department having avg(salary)>50000;
select*from employees where department in ("IT","Finance") and (salary>60000 or city="nashik") and age>=28;
select city, avg(salary) from employees where age>30 and city!="mumbai" group by city having avg(salary)>55000;
select department, max(salary) from employees where city!="delhi" and emp_name not like "%a%" and (salary between 50000 and 85000) and salary>70000 group by department order by max(salary) desc limit 2;

select department, avg(salary) from employees group by department having avg(salary)>60000;
select city, sum(salary) from employees group by city having sum(salary)>200000;
select department, count(*) from employees group by department having count(*)>3;
select city, max(salary) from employees group by city having max(salary)>80000;
select department, min(salary) from employees group by department having min(salary)<35000;
select department, avg(salary) from employees where age>30 group by department having avg(salary)>55000;
select city, sum(salary) from employees where salary>45000 group by city having sum(salary)>150000;
select department, count(*) from employees where city in ("pune","mumbai") group by department having count(*)>2;
select city, avg(salary) from employees where city!="delhi" group by city having avg(salary)>50000;
select department, avg(salary),sum(salary) from employees where (age between 28 and 45) and city != "delhi" group by department having avg(salary)>60000 and sum(salary)>180000;
select department, count(*) from employees where emp_name not like "%a%" group by department having count(*)>1;
select department, max(salary) from employees where salary between 45000 and 75000 group by department having max(salary)>=70000;
select city, avg(salary) from employees where age>32 group by city having avg(salary)>55000;
select department, sum(salary) from employees where city!="pune" group by department having sum(salary)>120000;
select city, avg(salary) from employees where department in ("IT","Finance") group by city having avg(salary)>60000;
select department, max(salary) from employees where age>35 group by department having max(salary)>75000;
select department, avg(salary),count(*) from employees where city!="mumbai" group by department having avg(salary)>58000 and count(*)>=2;
select city, sum(salary) from employees where emp_name not like "%e%" group by city having sum(salary)>100000;
select department, min(salary) from employees where age>30 group by department having min(salary)>50000;
select department, avg(salary), sum(salary) from employees where (age between 30 and 50) and emp_name not like "%i%" group by department having avg(salary)>65000 and sum(salary)>200000;

select department, avg(salary) from employees where age>28 group by department having avg(salary)>55000;
select city, sum(salary) from employees where salary>45000 group by city having sum(salary)>150000;
select department, count(*) from employees where city!="delhi" group by department having count(*)>2;
select city, max(salary) from employees group by city having max(salary)>75000;
select department, min(salary) from employees group by department having min(salary)<40000;
select department, avg(salary) from employees where city in ("pune","Mumbai") group by department having avg(salary)>50000;
select city, sum(salary) from employees group by city having sum(salary)>120000 order by sum(salary) desc;