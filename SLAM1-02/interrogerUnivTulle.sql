use univTulle ; 

select Etudiant.nom,Etudiant.prenom,Suivre.idModule,Module.libelle from Etudiant inner join Suivre on Etudiant.ine= Suivre.ine inner join Module on Suivre.idModule = Module.idModule  where prenom = "Lucie" ; 
select Etudiant.nom,Etudiant.prenom,Suivre.idModule,Module.libelle from Etudiant inner join Suivre on Etudiant.ine= Suivre.ine inner join Module on Suivre.idModule = Module.idModule  where prenom != "Lucie" ;
select COUNT(Suivre.ine) AS NB_etudiants,Module.libelle from Module inner join Suivre on Module.idModule = Suivre.idModule group by Module.libelle  ;
select AVG(Passer.note) AS MOYENNE,Evaluation.numEval from Passer inner join Evaluation on Passer.numEval = Evaluation.numEval ;
select AVG(Passer.note) AS MOYENNE_LUCIE,Etudiant.nom,Etudiant.prenom from Passer inner join Etudiant on Passer.ine = Etudiant.ine inner join Suivre on Etudiant.ine = Suivre.ine where prenom = "Lucie" ;
select AVG(Passer.note) AS MOYENNE_CLASSE,Module.libelle from Passer inner join Evaluation on Passer.numEval = Evaluation.numEval inner join Module on Evaluation.idModule = Module.idModule where libelle = "Droit Romain" ;

