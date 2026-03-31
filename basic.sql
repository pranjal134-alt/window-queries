create database sc;
create table s(
id int not null,
salary decimal(10),
age int check (age>16)
);
insert into s values(1,100000,17),(2,234526,18);
create table c(
id int not null,
name varchar(30)
);
insert into c values(1,'')
