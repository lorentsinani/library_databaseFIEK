
-- Queryt --


-- QUERY 2
Select emri, mbiemri
from 
(Select emri,mbiemri,year(dataHuazimit), count(*) numruesiLibrave 
from Lexuesi 
join Huazimi on Lexuesi.idL = Huazimi.idL 
where year(dataHuazimit) = 2020
group by Lexuesi.idL,emri,mbiemri
order by numruesiLibrave DESC
) subquery
where numruesiLibrave >= 2;

-- QUERY 2 MENYRA TJETER
SELECT L.emri , L.mbiemri
FROM Lexuesi L
group by L.idL
having 1< (select count(*)
from huazimi H
where L.idL = H.idL and YEAR(H.dataHuazimit)=2020
);



-- QUERY 1
SELECT * FROM Libraria.lexuesi A
where A.qyteti="Prishtine" ;
 
-- QUERY 2
Select emri, mbiemri
from 
(Select emri,mbiemri,year(dataHuazimit), count(*) numruesiLibrave 
from Lexuesi 
join Huazimi on Lexuesi.idL = Huazimi.idL 
where year(dataHuazimit) = 2020
group by Lexuesi.idL,emri,mbiemri
order by numruesiLibrave DESC
) subquery
where numruesiLibrave >= 2;
 
-- QUERY 2 MENYRA TJETER
SELECT L.emri , L.mbiemri
FROM Lexuesi L
group by L.idL
having 1< (select count(*)
from huazimi H
where L.idL = H.idL and YEAR(H.dataHuazimit)=2020
);
 
-- QUERY 3
select emri, mbiemri
from Lexuesi 
where idL in (
SELECT idL
from Huazimi
where (DATEDIFF(dataKthimit,dataHuazimit) >= 15) and (year(dataKthimit) = 2020 or year(dataKthimit) = 2021));
 
-- QUERY 4

Select subquery.idLibrit, subquery.titulli
from 
(SELECT Libri.idLibrit, Libri.titulli
FROM Libri
WHERE Libri.idLibrit NOT IN (
    SELECT Huazimi.idLibrit
	from Huazimi
	where year(dataHuazimit) = 2021
))subquery
join Huazimi on subquery.idLibrit = Huazimi.idLibrit
where (year(dataHuazimit) = 2019 or year(dataHuazimit) = 2020);



-- QUERY 5 
-- Select emri, mbiemri, count(*) numruesiLibrave
-- from 
-- (Select emri,mbiemri,dataHuazimit, count(*) numruesiLibrave 
-- from Lexuesi 
-- join Huazimi on Lexuesi.idL = Huazimi.idL 
-- where (dataHuazimit between '2021-08-01' and '2021-12-31' )
-- group by Lexuesi.idL,emri,mbiemri
-- order by numruesiLibrave DESC
-- ) subquery
-- where numruesiLibrave >= 3;

Select emri,mbiemri,dataHuazimit, count(*) numruesiLibrave 
from Lexuesi 
join Huazimi on Lexuesi.idL = Huazimi.idL 
where (dataHuazimit between '2021-09-01' and '2021-12-31' )
group by Lexuesi.idL,emri,mbiemri
order by numruesiLibrave DESC
limit 5;
 
-- QUERY 6 
 
SELECT vitiRegjistrimit, sum(cmimiRegjistrimit)
FROM detajetelexuesit 
where vitiRegjistrimit = 2019 
UNION
SELECT vitiRegjistrimit, sum(cmimiRegjistrimit)
FROM detajetelexuesit 
where vitiRegjistrimit = 2020
UNION
SELECT vitiRegjistrimit, sum(cmimiRegjistrimit)
FROM detajetelexuesit 
where vitiRegjistrimit = 2021;
 
-- QUERY 7
 
-- SELECT emri, mbiemri, zhanri
-- from lexuesi,
-- (Select zhanri, Huazimi.idLibrit, idL
-- from Libri
-- join Huazimi on Libri.idLibrit = Huazimi.idLibrit 
-- where year(dataHuazimit) = 2021
-- )subquery1
-- where lexuesi.idL = subquery1.idL;

WITH
zhanret AS (
select lexuesi.idL as idlexuesi, lexuesi.emri as lexuesi,
libri.zhanri as zhanri, count(*) as huazime, count(huazimi.verejtje) as vonesateLibrit
from lexuesi
inner join huazimi on (huazimi.idL = lexuesi.idL)
inner join libri on (libri.idLibrit = huazimi.idLibrit)
where year(huazimi.dataHuazimit) = 2021 -- year(curdate()) mirepo tash 2022 dhe te dhenat jane insertuar per 2021
group by huazimi.idL, libri.zhanri
)
select z1.lexuesi, z1.zhanri, z1.huazime, z1.vonesateLibrit
from zhanret z1
where z1.huazime= (select max(z2.huazime)
from zhanret z2
where z1.idlexuesi = z2.idlexuesi);
 
 
-- WITH
-- zhanret AS (
--     SELECT lexuesi.idL AS idlexuesi, lexuesi.emri AS lexuesi, libri.zhanri as zhanri, count(*) AS huazime , count(huazimi.verejtje) as vonesateLibrit
--     FROM lexuesi
--     INNER JOIN huazimi on (huazimi.idL = lexuesi.idL)
--     INNER JOIN libri on (libri.idLibrit = huazimi.idLibrit)
--     where year(huazimi.dataHuazimit) = year(curdate())
--     GROUP BY huazimi.idL, libri.zhanri
-- )
-- SELECT concat(z1.lexuesi,' ka ', z1.huazime ,' huazime' , ' zhanri  i preferuar eshte ' ,z1.zhanri, '  dhe ka vonuar librat ' ,z1.vonesateLibrit ,' here') as 'Detajet e Lexuesit'
-- FROM zhanret z1 
-- WHERE z1.huazime = (SELECT max(z2.huazime)
-- FROM zhanret z2 
-- WHERE z1.idlexuesi = z2.idlexuesi);
 
 
-- QUERY 8
Select titulli 
from (
SELECT MAX(frekuenca) hera_Huazimit, idLibrit FROM (
SELECT idLibrit, count(idLibrit) frekuenca
from Huazimi
-- year(CURRENT_TIMESTAMP)
where (year(dataHuazimit)=2021)
group by idLibrit) derived
) derived2
join Libri on Libri.idLibrit = derived2.idLibrit;
 
-- QUERY 9
SELECT distinct l.autori AS TopAutori
from Libraria.Libri l
where idLibrit IN ( SELECT h.idLibrit
from Libraria.Huazimi h
group by h.idLibrit 
HAVING COUNT(*) >= ALL( SELECT COUNT(*) GJ
from Libraria.Huazimi h
group by h.idLibrit));
