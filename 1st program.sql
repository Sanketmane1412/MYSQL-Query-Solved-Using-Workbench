create database pqr;
use pqr;
create table sanket(name varchar(50),id int primary key,gender varchar(50),address varchar(50),age int);
insert into sanket values ("mayur",101,"male","tingrenagar",22),("meena",102,"female","yerwada",29),("sagar",103,"male","yerwada-nagar",38),("pari",104,"female","dhanori",8);
select*from sanket;
show tables;

create table may(id_no int,marks int primary key, mobile_no int(50),foreign key(id_no)references sanket(id));
insert into may values (101,98,9067),(102,35,8762),(103,65,7845),(104,85,9865);
select*from may;