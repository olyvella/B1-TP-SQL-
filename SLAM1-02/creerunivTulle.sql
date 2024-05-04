drop database if exists univTulle ;
create database univTulle ;
use univTulle ;
create table Etudiant (
        ine varchar(11) not null,
        nom varchar(40) not null,
        prenom varchar(20) not null,
        primary key(ine)
) ; 

create table Module ( 
        idModule int not null, 
        libelle varchar(30) not null,
        primary key(idModule) 
) ; 

create table Evaluation ( 
        numEval int not null, 
        dateEval varchar(30) not null,
        duree int not null,
        idModule int not null,
        primary key(numEval), 
        foreign key(idModule)references Module(idModule)
) ;

create table Suivre (
		ine varchar(11) not null,
        idModule int not null,
        primary key(ine, idModule),
        foreign key(ine) references Etudiant(ine),
		foreign key(idModule) references Module(idModule)
) ; 

create table Passer (
		ine varchar(11) not null,
		numEval int not null, 
		note int not null, 
		primary key(ine,numEval),
		foreign key(numEval) references Evaluation(numEval),
		foreign key(ine) references Etudiant(ine) 
) ; 

insert into Etudiant(ine,nom,prenom) values("0000000001A","SINK","David") ;
insert into Etudiant(ine,nom,prenom) values("0000000002B","BROWN","Lucie") ;

insert into Module(idModule,libelle) values(1,"Mythologie Romaine") ;
insert into Module(idModule,libelle) values(2,"Mythologie Grecque") ;
insert into Module(idModule,libelle) values(3,"Droit Romain") ;

insert into Evaluation(numEval,dateEval,duree,idModule) values(1,'2021-10-03',2,1) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(2,'2021-10-28',3,2) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(3,'2021-10-28',2,3) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(4,'2021-11-08',4,1) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(5,'2021-11-19',1,2) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(6,'2021-12-14',2,3) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(7,'2021-12-15',2,1) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(8,'2021-01-18',3,2) ;
insert into Evaluation(numEval,dateEval,duree,idModule) values(9,'2021-01-20',2,1) ;

insert into Suivre(ine,idModule) values("0000000001A",1) ;
insert into Suivre(ine,idModule) values("0000000001A",2) ;
insert into Suivre(ine,idModule) values("0000000001A",3) ;
insert into Suivre(ine,idModule) values("0000000002B",1) ;
insert into Suivre(ine,idModule) values("0000000002B",3) ;

insert into Passer(ine,numEval,note) values("0000000001A",1,10) ;
insert into Passer(ine,numEval,note) values("0000000001A",3,8) ;
insert into Passer(ine,numEval,note) values("0000000001A",5,13) ;
insert into Passer(ine,numEval,note) values("0000000001A",6,11) ;
insert into Passer(ine,numEval,note) values("0000000001A",7,15) ;
insert into Passer(ine,numEval,note) values("0000000001A",8,7) ;
insert into Passer(ine,numEval,note) values("0000000001A",9,4) ;
insert into Passer(ine,numEval,note) values("0000000002B",1,15) ;
insert into Passer(ine,numEval,note) values("0000000002B",3,18) ;
insert into Passer(ine,numEval,note) values("0000000002B",4,3) ;
insert into Passer(ine,numEval,note) values("0000000002B",7,12) ;
insert into Passer(ine,numEval,note) values("0000000002B",9,14) ;




