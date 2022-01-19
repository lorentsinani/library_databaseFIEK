create database Libraria;
use Libraria;
create table Lexuesi(
idL INTEGER ,
emri varchar(30),
mbiemri varchar(30),
emriPrindit varchar(30),
gjinia varchar (2),
dataLindjes date,
rruga varchar(50),
qyteti varchar(50),
shteti varchar(50),
kodiPostal INTEGER,
telefoni bigint,
email varchar(30),
profesioni varchar(20),
primary key(idL)
);

use Libraria;
insert into Lexuesi(idL,emri,mbiemri,emriPrindit,gjinia,dataLindjes,rruga,qyteti,shteti,kodiPostal,telefoni,email,profesioni)
values
(12070800,'Blend','Selmani','Bajram','M','1996-10-12','Rr. Skenderbeu','Prishtine','Kosove',12341,38349334528,'blend.selmani@hotmail.com','Student'),
(12070801,'Plotmira','Gashi','Naim','F','1999-09-24','Rr. Llesna','Prishtine','Kosove',12341,38349746284,'plotmira.gashi@hotmail.com','Piktor'),
(12070802,'Jetmir','Rrustemi','Aziz','M','2000-3-12','Rr. Ali Pasha','Prizren','Kosove',11322,38349865938,'jetmir.rrustemi@hotmail.com','IT'),
(12070803,'Valmira','Krasniqi','Flurim','F','1993-05-24','Rr. Dardania','Prishtine','Kosove',12341,38349993318,'valmira.krasniqi@hotmail.com','Kengetar'),
(12070804,'Diar','Abazi','Shefqet','M','1998-01-18','Rr. Agim Hajrizi','Mitrovice','Kosove',40000,38344556246,'diar.abazi@hotmail.com','Avokat'),
(12070805,'Klodian','Bylykbashi','Ekrem','M','2003-09-14','Rr. Zahir Pajaziti','Prishtine','Kosove',12341,38349864564,'klodian.bylykbashi@hotmail.com','Student'),
(12070806,'Leonit','Sinani','Besnik','M','1996-07-22','Rr. Luan Haradinaj','Suhareke','Kosove',10291,38344237718,'leonit.sinani@hotmail.com','Polic'),
(12070807,'Suela','Kostanica','Hamdi','F','2005-12-10','Rr. Bajram Pasha','Gjilan','Kosove',12341,38344571849,'suela.kostanica@hotmail.com','IT'),
(12070808,'Albiona','Morina','Albatrit','F','2003-08-11','Rr. Mehmet Gradica','Mitrovice','Kosove',40000,38344835899,'albiona.morina@hotmail.com','Arkitekte'),
(12070809,'Eris','Nimani','Albin','M','1999-02-25','Rr. Sinan Gashi','Vushtrri','Kosove',13256,38344965819,'eris.nimani@hotmail.com','Student'),
(12070810,'Ardit','Fejza','Galdim','M','2003-03-13','Rr. Garibaldi','Ferizaj','Kosove',14324,38344638799,'ardit.fejza@hotmail.com','Bankier'),
(12070811,'Ideja','Ferati','Berat','F','2001-08-26','Rr. 11 Marsi','Peje','Kosove',15487,38344312223,'ideja.ferati@hotmail.com','Avokate'),
(12070812,'Armela','Hajra','Driton','F','2002-12-15','Rr. Mbreteresha Teute','Mitrovice','Kosove',40000,38349816094,'armela.hajra@hotmail.com','Studente'),
(12070813,'Petrit','Fejzullahu','Isa','M','2004-12-28','Rr. Artim Jashari','Prizren','Kosove',16542,38349551445,'petrit.fejzullahu@hotmail.com','Student');


use Libraria;
create table Punetori(
idPunetorit INTEGER,
emri varchar(30),
mbiemri varchar(30),
titulli varchar(30),
rruga varchar(50),
qyteti varchar(30),
shteti varchar(30),
kodiPostal INTEGER,
telefoni bigint,
email varchar(50),
paga double,
primary key(idPunetorit)
);

use Libraria;
insert into Punetori(idPunetorit,emri,mbiemri,titulli,rruga,qyteti,shteti,kodiPostal,telefoni,email,paga)
values
(2138801,'Shefki','Kaciu','Pastrues','Str Luan Haradinaj',' Prizren', 'Kosove',25000,383491551,'shefki.kaciu@hotmail.com',350),
(2138802,'Mentor','Bytyqi','Sigurim','Rruga B Bajram Kelmendi','Prishtine',' Kosove',10000,383499443,'mentor.bytyqi@hotmail.com',420),
(2138803,'Lirim','Basha','Sigurim','Rr UCK 2 10000 ','Prishtin ',' Kosove',383496759,10000,'lirim.basha@hotmail.com',420),
(2138804,'Florim','Sinani','Drejtor','Rr Dardania SU 6-6 B  4 nr. 17' ,'Prishtine ',' Kosove',1000,383498849,'florim.sinani@hotmail.com',750),
(2138805,'Vlera','Hoxha','Recepcioniste','Rr Nëna Terezë nr.42-2 ','Peje ',' Kosove',30000,383448559,'vlera.hoxha@hotmail.com',510),
(2138806,'Dorina','Krasniqi','Zv.Drejtoreshe','Rr Bedri Pejani nr.4 ','Suhareke ',' Kosove',23000,383494351,'dorina.krasniqi@hotmail.com',650),
(2138807,'Edona','Kaciu','Recepcioniste','Rr Qamil Hoxha nr. 10-3 ','Peje ','Kosove',02398,383449074,'edona.kaciu@hotmail.com',510),
(2138808,'Lumturije','Bytyqi','Pastruese','Rr Andrea Gropa nr 5-A ','Mitrovice ','Kosove',40000,383456799,'lumturije.bytyqi@hotmail.com',350),
(2138809,'Sabrije','Basha','Kontrolluese','Rr Mujo Ulqinaku - Q.Pejton nr.5-1',' Prishtine',' Kosove',10000,383448819,'sabrije.basha@hotmail.com',575),
(2138810,'Zyrafete','Osmanaj','Kontrolluese','Rr  Bajram Bahtiri nr. 56 ','Gjilan ','Kosove',30202,383445611,'zyrafete.osmanaj@hotmail.com',575);


use Libraria;
create table DetajeteLexuesit(
idL INTEGER,
vitiRegjistrimit year,
dataRegjistrimit date,
cmimiRegjistrimit double,
idPunetorit INTEGER,
anetaresimi boolean ,
primary key(idL),
foreign key(idL) references Lexuesi(idL),
foreign key(idPunetorit) references Punetori(idPunetorit)
);


use Libraria;
insert into DetajeteLexuesit(idL,vitiRegjistrimit,dataRegjistrimit,cmimiRegjistrimit,idPunetorit,anetaresimi)
values
(12070800,2019,'2019-04-11',3.5,2138805,false),
(12070801,2020,'2020-08-12',3.5,2138805,false),
(12070802,2020,'2020-09-12',3.5,2138807,false),
(12070803,2020,'2020-06-14',3.5,2138807,false),
(12070804,2021,'2021-01-16',3.5,2138805,true),
(12070805,2021,'2021-05-02',3.5,2138807,true),
(12070806,2021,'2021-02-11',3.5,2138807,true),
(12070807,2020,'2020-03-19',3.5,2138805,false),
(12070808,2021,'2021-06-12',3.5,2138805,true),
(12070809,2020,'2020-06-02',3.5,2138805,false),
(12070810,2021,'2021-06-12',3.5,2138805,true),
(12070811,2021,'2021-06-12',3.5,2138805,true),
(12070812,2020,'2020-06-12',3.5,2138807,false),
(12070813,2019,'2019-07-21',3.5,2138807,true);

use Libraria;
create table Libri(
idLibrit INTEGER,
titulli varchar(50),
autori varchar(30),
zhanri varchar(20),
numriKopjeve integer,
dataPranimit date,
idPunetorit INTEGER,
primary key(idLibrit),
foreign key(idPunetorit) references Punetori(idPunetorit)
);

use Libraria;
insert into Libri(idLibrit,titulli,autori,zhanri,numriKopjeve,dataPranimit,idPunetorit)
values
(96359770,'Poema e Gilgameshit','Chinua Achebe','Drame',15,'2018-11-04',2138810),
(96359771,'Libri i Jobit','Fjodor Dostojevski','Roman',2,'2018-12-05',2138809),
(96359772,'Një mijë e një net','George Eliot','Erotik',7,'2018-07-20',2138809),
(96359773,'Saga de Njál','Ralph Ellison','Drame',1,'2018-09-19',2138810),
(96359774,'Gjithçka prishet','William Faulkner','Roman',5,'2018-04-21',2138809),
(96359775,'Tregime për fëmijë','Gustave Flaubert','Perralle',0,'2018-12-11',2138810),
(96359776,'Komedia Hyjnore','Federico García Lorca','Roman',5,'2018-01-12',2138809),
(96359777,'Krenaria dhe paragjykimi','Nikolai Gogol','Komedi',6,'2019-01-31',2138810),
(96359778,'Papa Goriot','Gunter Grass','Tragjedi',4,'2019-02-19',2138809),
(96359779,'Permbytja','Henryk Sienkiewicz','Tragjedi',3,'2019-06-24',2138809),
(96359780,'Antibotet','Andej Voznjesenski','Fantazi',2,'2019-08-15',2138809),
(96359781,'Fausti','Johan Wolfgang Von Goethe','Drame',11,'2020-12-07',2138810);


use Libraria;
create table Arkiva(
idArkiva INTEGER,
primary key(idArkiva),
idL int REFERENCES Huazimi(idL),
idLibrit int REFERENCES Huazimi(idLibrit)
);

use Libraria;
insert into Arkiva(idArkiva,idL,idLibrit)
values
(81781560,12070800,96359770),
(81781561,12070802,96359772),
(81781562,12070805,96359773),
(81781563,12070807,96359774),
(81781564,12070809,96359776),
(81781565,12070800,96359780),
(81781566,12070803,96359773),
(81781567,12070806,96359779),
(81781568,12070808,96359777),
(81781569,12070810,96359778),
(81781570,12070811,96359771),
(81781571,12070812,96359775),
(81781572,12070813,96359781);

-- Krijimi i stored procedure per zbritjen e Kopjeve
delimiter //
create procedure zbritKopjet(id integer) 
begin 
  update libri
  set numriKopjeve = numriKopjeve - 1
  where idLibrit = id;
end //
delimiter ;


use Libraria;
create table LibrateDemtuar(
idLibrit INTEGER,
titulli varchar(30),
autori varchar(30),
zhanri varchar(20),
dataPranimit date,
punetori varchar(30),
verejtje varchar(50),
dataRegjistrimit date,
primary key(idLibrit),
foreign key(idLibrit) references libri(idLibrit)
);

-- Krijimi i triggerit per te zvogluar numrin e kopjeve te librave
delimiter //
create trigger ndryshoKopjet before insert on libratedemtuar for each row 
begin 
    call zbritKopjet(new.idLibrit);
end //
delimiter ;


use Libraria;
insert into LibrateDemtuar(idLibrit,titulli,autori,zhanri,dataPranimit,punetori,verejtje,dataRegjistrimit)
values
(96359770,'Poema e Gilgameshit','Chinua Achebe','Drame','2018-11-04',2138810,"Libri ka te demtuar kopertinat",'2020-11-04');


delimiter //
create procedure zbritKopjet2(id integer) 
begin 
  update libri
  set numriKopjeve = numriKopjeve - 1
  where idLibrit = id
  and numriKopjeve > 0;
end //
delimiter ;


use Libraria;
create table Huazimi(
dataHuazimit date,
afatiKthimit date,
dataKthimit date,
idPunetorit INTEGER,
verejtje varchar(30),
idL int REFERENCES Lexuesi(idL),
idLibrit int REFERENCES Libri(idLibrit),
PRIMARY KEY (idL, idLibrit),
foreign key(idPunetorit) references Punetori(idPunetorit)
);


delimiter //
create trigger ndryshoKopjet2 before insert on huazimi for each row 
begin 
    call zbritKopjet2(new.idLibrit);
end //
delimiter ;


use Libraria;
insert into Huazimi(idLibrit,idL,dataHuazimit,afatiKthimit,dataKthimit,idPunetorit,verejtje)
values
(96359770,12070800,'2021-09-15','2021-09-30','2021-10-02',2138809,'vonuar'),
(96359770,12070802,'2021-02-10','2021-02-25','2021-02-24',2138809,NULL),
(96359770,12070804,'2020-03-01','2020-03-16','2020-03-24',2138809,'vonuar'),
(96359770,12070805,'2021-08-20','2021-09-04','2021-09-14',2138809,'vonuar'),
(96359770,12070806,'2021-11-26','2021-12-11','2021-12-09',2138809,'vonuar'),
(96359770,12070807,'2021-12-10','2021-12-25','2021-12-23',2138809,NULL),
(96359770,12070801,'2021-09-18','2021-10-03','2021-10-13',2138809,'vonuar'),
(96359772,12070800,'2021-10-27','2021-11-11','2021-11-15',2138809,'vonuar'),
(96359773,12070800,'2021-07-15','2021-07-30','2021-07-29',2138809,NULL),
(96359772,12070802,'2021-07-20','2021-08-04','2021-08-07',2138810,'vonuar'),
(96359773,12070805,'2020-03-19','2020-04-03','2021-04-06',2138805,'vonuar'),
(96359774,12070807,'2021-04-02','2021-04-17','2021-9-19',2138807,'vonuar'),
(96359776,12070808,'2020-06-29','2020-07-14','2020-05-16',2138805,'vonuar'),
(96359780,12070800,'2019-07-10','2019-07-25','2019-07-22',2138805,NULL),
(96359773,12070803,'2021-09-14','2021-09-29','2021-09-28',2138807,null),
(96359779,12070806,'2021-09-09','2021-09-24','2021-09-28',2138807,null),
(96359777,12070808,'2020-11-18','2020-12-03','2020-12-10',2138805,'vonuar'),
(96359778,12070810,'2020-12-30','2021-01-14','2021-01-10',2138810,null),
(96359771,12070811,'2021-05-17','2021-06-01','2021-06-12',2138809,'vonuar'),
(96359775,12070812,'2021-10-12','2021-10-27','2021-10-29',2138810,'vonuar'),
(96359781,12070813,'2019-02-22','2021-02-07','2021-02-15',2138807,'vonuar');


use Libraria;
create table pushimivjetor(
idPunetorit INTEGER,
dataPushimit date,
kohezgjatja int,
PRIMARY KEY (idPunetorit),
foreign key(idPunetorit) references Punetori(idPunetorit)
);

use Libraria;
insert into pushimivjetor(idPunetorit,dataPushimit, kohezgjatja)
values
(2138801,'2021-06-12',20),
(2138802,'2021-07-15',20),
(2138803,'2021-04-13',20),
(2138804,'2021-09-24',20),
(2138805,'2021-08-10',20),
(2138806,'2021-11-20',20),
(2138807,'2021-12-18',20),
(2138808,'2021-12-25',20),
(2138809,'2021-10-10',20),
(2138810,'2021-01-7',20);


use Libraria;
create table tabelavleresimi(
vleresimi int,
idL int REFERENCES Lexuesi(idL),
idLibrit int REFERENCES Libri(idLibrit),
PRIMARY KEY (idL, idLibrit)
);

use Libraria;
insert into tabelavleresimi(idL,idLibrit, vleresimi)
values
(12070800,96359773,5),
(12070801,96359770,4),
(12070802,96359770,4),
(12070803,96359773,4),
(12070804,96359770,3),
(12070805,96359773,3),
(12070806,96359779,4),
(12070807,96359774,5),
(12070808,96359777,2),
(12070810,96359778,4),
(12070811,96359771,3),
(12070812,96359775,4),
(12070813,96359781,5);




use Libraria;
create table donatori(
emri varchar(30),
mbiemri varchar(30),
xhirollogaria varchar(20),
adresa varchar(80),
titulli varchar(25),
idLibrit int,
nrKopjeve int,
nrTelefonit bigint,
foreign key(idLibrit) references libri(idLibrit)
);


use Libraria;
insert into donatori(emri, mbiemri, xhirollogaria,	adresa,	titulli, idLibrit, nrKopjeve, nrTelefonit)
values
("Betim","Rexhepi","20-27-0000126005-10","Rr. Mehmet Kalavaci, Prishtinë","Poema e Gilgameshit",96359770,3,38344832095),
("Enes","Alushi","21-18-2300123002-11","Rr. Ahmet Gashi, Prizren", "Një mijë e një net",96359772,1,38344674053),
("Urim","Kazagiqi","18-17-0230126385-10","Rr. Jasir Berishi, Podujevë","Gjithçka prishet",96359774,2,38349770001),
("Arber","Abazi","19-17-0636236819-11","Rr. Naim Frashëri, Vushtrri","In Search of Lost Time",96359781,4,38344743233),
("Fazli","Nuli","20-15-0926123745-13","Rr. Vesel Jashari, Mitrovicë","Krenaria dhe paragjykimi",96359777,2,38345665575),
("Valdrin","Ternava","21-23-2340153205-12","Rr. Ismail Kadare, Prishtinë","Permbytja",96359779,1,38349238091);


use Libraria;
create table buxheti(
idPunetorit int,
shuma int,
qellimi varchar(30),
kompania varchar(30),
aprovimi boolean,
foreign key (idPunetorit) references punetori(idPunetorit)
);

use Libraria;
insert into buxheti(idPunetorit, shuma, qellimi, kompania, aprovimi)
values
(2138804,3500,"Furnizim me libra","BUZUKU",true),
(2138801,1500,"Renovim i tualeteve","BUNJAMINI SHPK",false),
(2138810,565,"Ndriçimi","KULLA ELECTRONICS",true),
(2138809,2435,"Rafte","ISMAILI CONSTRUCTION",false);


-- nje tabele per normalizim shembull: 
-- create table autori (
-- idAutori int,
-- emri varchar(25),
-- mbiemri varchar(25),
-- primary key(idAutori),
-- foreign key(idAutori) references libri(idAutori)
-- );
