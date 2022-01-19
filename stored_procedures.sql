-- procedure qe te shfaqim te dhenat e lexuesit
delimiter //
create procedure adresaLexuesve()
begin
select emri, mbiemri, rruga, qyteti, kodiPostal 
from lexuesi;
end //
delimiter ;

call adresaLexuesve();

-- procedure qe sipas titullit te punetorit ta dijme qfare page ka ai/ajo
delimiter //
create procedure paga_titulli()
begin
select distinct titulli, paga
from punetori;
end //
delimiter ;

call paga_titulli();

-- procedure per me i zbrit kopjet pasi te shtohet nje liber si i demtuar
delimiter //
create procedure zbritKopjetLibrateDemtuar(id integer) 
begin 
  update libri
  set numriKopjeve = numriKopjeve - 1
  where idLibrit = id;
end //
delimiter ;

-- procedure per me i zbrit kopjet pasi te huazohet nje liber
delimiter //
create procedure zbritKopjetHuazimi(id integer) 
begin 
  update libri
  set numriKopjeve = numriKopjeve - 1
  where idLibrit = id
  and numriKopjeve > 0;
end //
delimiter ;
