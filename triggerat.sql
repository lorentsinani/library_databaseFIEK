-- Triggerat

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

update huazimi
set dataKthimit = '2019-10-25'
where idL = '12070803' and dataHuazimit = '2019-07-09';

 
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

insert into Lexuesi(idL,emri,mbiemri,emriPrindit,gjinia,dataLindjes,rruga,qyteti,shteti,kodiPostal,telefoni,email,profesioni)
values
(12063039,'Haki','Bytyqi','Zenel','M','1998-10-12','Rr. Zahir Pajaziti','Prishtine',null,10000,38349323228,'haki.bytyqi@hotmail.com','Student');