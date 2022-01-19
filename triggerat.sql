-- Triggerat

-- trigger per te kontrolluar nese eshte vonuar libri nga huazuesi
delimiter $$
create trigger kontrolloVonimin before update on huazimi
for each row
begin
if DATEDIFF(new.dataKthimit,old.dataHuazimit) >= 15
then
set new.verejtje = 'Keni vonuar kthimin';
end if;
end $$
delimiter $$;

 -- trigger qe te vendos shtetin e lexuesit direkt edhe nese nuk vendoset pasi qe te gjithe lexuesit dihet qe jetojne ne kosove
delimiter $$
create trigger shtetiLexuesit before insert on lexuesi
for each row
begin
if new.shteti is null
then
set new.shteti = 'Kosove';
end if;
end $$
delimiter $$;

-- trigger qe lidhet me stored procedure (zbritKopjetLibrateDemtuar) per te zbritur numrin e kopjeve pasi te vendoset nje idLibrit ne tabelen libratedemtuar
delimiter //
create trigger ndryshoKopjet before insert on libratedemtuar for each row 
begin 
    call zbritKopjetLibrateDemtuar(new.idLibrit);
end //
delimiter ;

-- trigger qe lidhet me stored procedure (zbritKopjetHuazimi) per te zbritur numrin e kopjeve pasi te vendoset nje idLibrit ne tabelen huazimi
delimiter //
create trigger ndryshoKopjetHuazimi before insert on huazimi for each row 
begin 
    call zbritKopjetHuazimi(new.idLibrit);
end //
delimiter ;