delimiter //
create trigger ndryshoKopjetHuazimi before insert on huazimi for each row 
begin 
    call zbritKopjetHuazimi(new.idLibrit);
end //
delimiter ;

delimiter //
create procedure zbritKopjetHuazimi(id integer) 
begin 
  update libri
  set numriKopjeve = numriKopjeve - 1
  where idLibrit = id
  and numriKopjeve > 0;
end //
delimiter ;