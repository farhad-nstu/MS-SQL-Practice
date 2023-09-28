SELECT * from
( select ROW_NUMBER() OVER(order by id ASC) as rn, * from slcm_categories ) as tmp
where tmp.rn in (1,3,5)