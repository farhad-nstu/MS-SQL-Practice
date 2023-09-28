--1,3,5 th value
SELECT * from
( select ROW_NUMBER() OVER(order by id ASC) as rn, * from slcm_categories ) as tmp
where tmp.rn in (1,3,5)

--using cte
with cte as 
(select a.name,a.type,a.dept_id,ROW_NUMBER() over(order by a.id asc) as Rn
from slcm_categories as a)
select * from cte
where Rn in (1,3,5)

--select * from slcm_categories

--N'th highest value 
SELECT TOP 1 *
FROM 
    (SELECT TOP 3 *
     FROM slcm_categories 
     ORDER BY id DESC) tmp
ORDER BY id ASC