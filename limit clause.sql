create database sanket1;
use sanket1;
create table students(
id int primary key,
name varchar(50),
class int not null,
percentage int not null
);
insert into students values (101,"sanket",15,98),(102,"mayur",14,78),(103,"meena",13,76),(104,"asha",8,60),(105,"lata",9,68);
select*from students;

select*from students limit 3;
select*from students order by percentage desc limit 3;
select*from students limit 2,3;
select*from students where name like '%a%' and percentage>70 limit 3;
select*from students where city="pune" order by percentage desc limit 3;