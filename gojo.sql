create database mp;
create table cou (
name varchar(29),
subject varchar(56),
mark int,
first SERIAL PRIMARY KEY
);
insert into cou values('alice','sst',80), ('alice','eng',90),('alice','hind',95),('yuta','english',80),('yuta','hind',90),('brevis','sst',92),('brevis','eng',94),('brevis','hind',98);
select ROW_NUMBER() over(order by mark  desc) AS  row , *
from cou;
select rank() over(order by mark  desc) AS  row , *
from cou;
select dense_rank() over(order by mark  desc) AS  row , *
from cou;
select ROW_NUMBER() over(partition by subject  order by mark  asc) AS  row , *
from cou;
select ROW_NUMBER() over(partition by name order by mark  asc) AS  row , *
from cou;
select RANK() over(partition by subject  order by mark  desc) AS  row , *
from cou;
select dense_rank() over(partition by subject order by mark  desc) AS  row , *
from cou;
select lead(mark) over (partition by subject order by mark  desc) as new ,* from cou;
select lag(mark) over (partition by subject order by mark  desc) as new ,* from cou;
select first_value (name) over (partition by subject order by mark  desc) as first ,* from cou;
select last_value (name) over (partition by subject order by mark  desc) as first ,* from cou;
select is null (name) over (partition by subject order by mark  desc) as first ,* from cou;
with cte as(
select * from cou where mark between 85 and 95
),cte1 as(
select * from cou where mark between 85 and 95
)
select * from cte
union all
select * from cte1;
WITH RECURSIVE rcte AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM rcte
    WHERE n < 4
)
SELECT exp(sum(log(n))) factorial
FROM rcte;



