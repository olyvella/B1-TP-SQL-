drop database if exists crab ;
create database if not exists crab ;
use crab ;
create table Techniciens (
	idTech int not null, 
	nomTech varchar(20) not null,
	prenomTech varchar(20) not null, 
	primary key(idTech)
);

create table Station ( 
	idStation int not null,
	adresseRue varchar(20) not null,
	primary key(idStation)
);

create table Bornes (
	idBorne varchar(20) not null, 
	idStation int not null,
	etat varchar(20) not null, 
	primary key(idBorne),
	foreign key(idStation) references Station(idStation)
);

create table Interventions (
	idInter int not null,
	date_Inter varchar(30) not null, 
	fin_Inter varchar(30), 
	idBorne varchar(20) not null,
	idTech int not null, 
	primary key(idInter), 
	foreign key(idBorne) references Bornes(idBorne), 
	foreign key(idTech) references Techniciens(idTech) 
);

insert into Techniciens values(1,'GENPRI','Erwan');
insert into Techniciens values(2,'KEHRE','Armand');
insert into Techniciens values(3,'MATOS','Yvan');
insert into Techniciens values(4,'TEFFON','Louis');

insert into Station values(1,'Place de la Mairie');
insert into Station values(2,'Place de la gare');
insert into Station values(3,'Entrée ZAC');

insert into Bornes values('B1', 1, 'ES');
insert into Bornes values('B2', 1, 'HS'); 
insert into Bornes values('B3', 1, 'ES'); 
insert into Bornes values('B4', 2, 'ES');
insert into Bornes values('B5', 2, 'ES');
insert into Bornes values('B6', 3, 'HS'); 
insert into Bornes values('B7', 3, 'ES');
insert into Bornes values('B8', 3, 'ES');
insert into Bornes values('B9', 3, 'ES');

insert into Interventions values(1,'2022-01-11 08:30:00','2022-01-11 10:00:00','B1',1);
insert into Interventions values(2,'2022-01-11 13:00:00','2022-01-11 15:20:00','B2',1);
insert into Interventions values(3,'2022-01-12 07:30:00','2022-01-12 16:10:00','B2',3);
insert into Interventions values(4,'2022-01-12 08:00:00','2022-01-12 09:00:00','B8',1);
insert into Interventions values(5,'2022-01-12 08:00:00','2022-01-12 13:30:00','B3',4);
insert into Interventions values(6,'2022-01-12 09:00:00','2022-01-12 10:00:00','B1',2);
insert into Interventions values(7,'2022-01-13 11:40:00','2022-01-13 12:20:00','B9',1);
insert into Interventions values(9,'2022-01-13 14:30:00','2022-01-13 15:00:00','B8',3);
insert into Interventions values(10,'2022-01-14 07:00:00','2022-01-14 12:00:00','B2',3); 
insert into Interventions values(11,'2022-01-14 08:00:00','2022-01-14 11:20:00','B1',2);
insert into Interventions values(12,'2022-01-15 09:00:00',NULL,'B1',1);
insert into Interventions values(13,'2022-01-15 08:00:00',NULL,'B8',4);

