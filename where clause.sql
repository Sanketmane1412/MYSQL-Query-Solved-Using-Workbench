create database meena;
use meena;
create table users (id int primary key,
name varchar(50),
roll_no int not null,
age int not null,
gender varchar(10),
city varchar (50),
marks int not null);
insert into users values(101,'meena',1,29,'F','pune',75),(102,'sanket',2,25,'m','satara',85),(103,'sandeep',3,22,'m','nashik',65),(104,'sagar',4,30,'m','pune',89);
select*from users;

select name from users where name LIKE "s%";
select name,marks from users where marks >80;
select name,age from users where age>=25;
select name,age,gender,city from users where city ="pune";
select*from users where marks>85 or city="pune";