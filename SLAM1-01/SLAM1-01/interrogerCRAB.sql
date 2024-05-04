use crab ;
  
select Bornes.idBorne, Bornes.etat, Station.adresseRue from Bornes join Station on Bornes.idStation = Station.idStation where etat = 'HS' ; 
select * from Bornes where idStation = 2 ; 
select nomTech, prenomTech from Techniciens order by nomTech,prenomTech ; 
select Techniciens.nomTech, Techniciens.prenomTech,Interventions.idBorne from Techniciens inner join Interventions on Techniciens.idTech = Interventions.idTech where idBorne = 'B1'  order by nomTech,prenomTech ; 
select Techniciens.nomTech, Techniciens.prenomTech,Interventions.idBorne from Techniciens inner join Interventions on Techniciens.idTech = Interventions.idTech where idBorne != 'B1'  order by nomTech,prenomTech ; 
select * from Interventions where fin_Inter IS NULL ; 
select * from Interventions where TIMEDIFF(fin_Inter, date_Inter) > '03:00:00';
select
select
 
