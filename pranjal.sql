create database school;
drop database school;
create table stu(
id int not null,
marks int not null check(marks>85),
name varchar(23)
);
insert into pou
(id,marks,name)
values
(2,88,'tinu'),
(5,90,'abhishek');
select * from pou;
alter table stu
rename to pou;
alter table pou
add column dep char(10) ;
alter table pou
alter column dep type varchar(10) ;
alter table pou
rename dep to pani;