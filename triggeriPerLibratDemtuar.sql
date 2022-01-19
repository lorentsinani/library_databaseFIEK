delimiter //
create trigger ndryshoKopjet before insert on libratedemtuar for each row 
begin 
    call zbritKopjetLibrateDemtuar(new.idLibrit);
end //
delimiter ;

delimiter //
create procedure zbritKopjetLibrateDemtuar(id integer) 
begin 
  update libri
  set numriKopjeve = numriKopjeve - 1
  where idLibrit = id;
end //
delimiter ;