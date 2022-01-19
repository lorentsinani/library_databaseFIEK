create view detajetSipasZhanrit as
select *
from
(select Libri.idLibrit, Libri.titulli, Libri.zhanri, Libri.numriKopjeve
from Libri
join Huazimi on Libri.idLibrit = Huazimi.idLibrit 
where Libri.zhanri = "Roman") derived_pamja2;


create view topLibrateHuazuar as
SELECT titulli,COUNT(*) as numriHuazimeve
from huazimi 
join libri on huazimi.idLibrit = libri.idLibrit
group by huazimi.idLibrit
order by numriHuazimeve desc
limit 5;


