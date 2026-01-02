create database mayur;
use mayur;
CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    age INT,
    city VARCHAR(50)
);
INSERT INTO students (roll_no, name, marks, age, city) VALUES
(1, 'Sanket', 85, 22, 'Pune'),
(2, 'Meena', 72, 21, 'Mumbai'),
(3, 'Asha', 90, 23, 'Pune'),
(4, 'Lata', 60, 20, 'Nashik'),
(5, 'Ravi', 48, 22, 'Pune'),
(6, 'Amit', 77, 24, 'Mumbai');
SELECT * FROM students limit 3;
select*from students where city="pune" and (marks>80 or age<21);
select*from students where (marks not between 60 and 80) and city!="mumbai";
select*from students where name like "a%" and name not like "%t" and (city="pune" or city="mumbai");
select*from students where city!="pune" and city!="mumbai" and marks>=60;
select*from students where marks<50 or age>22 and city="pune";
select*from students where name like "%a%" and( marks>75 or city="nashik") and age<21;
select*from students where city="mumbai" and (marks>70 or marks<50);
select*from students where city!="pune" and (age<22 or marks>85);
select*from students where name not like "%i%" and marks not between 65 and 90 and (city="pune" or city="nashik");
select*from students where city!="mumbai" and (marks>80 or age<21) and name not like "r%" and marks not between 60 and 75;
select*from students;
select*from students where city="pune"and (marks >75 or age<21) and name not like "%t";
select*from students where city !="mumbai" and marks <=60 and name not like "%a%";
select*from students where marks >70 or (age >22 and city="pune")and name not like "%i%";
select*from students where city not in ("pune", "nashik")and (marks >65 or age <22);
select*from students where city !="mumbai" and (marks >80 or age <21)and name not like "%r" and name not like "%i%";