/********************** requette pour la liste des activites par annnee ***************************/

SELECT activite.date_activite, activite.intitule, activite.annee, type.nomtype, type.duree 
FROM activite, type 
WHERE activite.id_activite = type.id_activite 
GROUP BY (annee);
/******************** Requette pour la liste des ativites par type *******************************/
SELECT activite.date_activite, activite.intitule, activite.annee, type.nomtype, type.duree 
FROM activite, type 
WHERE activite.id_activite = type.id_activite 
GROUP BY (type.nomtype);
/******************** Requette pour la liste des ativites par date *******************************/
SELECT activite.date_activite, activite.intitule, activite.annee, type.nomtype, type.duree 
FROM activite, type 
WHERE activite.id_activite = type.id_activite 
GROUP BY (date_activite);
/************** Requette pour la liste des apprenants ou participants par activite ***************/
SELECT nom,prenom,email,numero,nomtype,duree 
FROM activite a, postulantactivite pa, type t, postulant p 
WHERE pa.id_activite = a.id_activite 
AND pa.id_postulant = p.id_postulant 
AND t.id_activite = a.id_activite;