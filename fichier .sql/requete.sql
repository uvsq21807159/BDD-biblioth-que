
/* requete qui affiche tous les lecteurs(Inscrit) habitant à Paris et née en 1987 */

SELECT Inscrit.IDInscrit,Inscrit.nom,Inscrit.prenom
FROM Inscrit
WHERE Inscrit.adresse = 'Paris' AND Inscrit.date_de_naissance LIKE '%1987'


/*requete qui affiche tous les livres de types informatique ecrit en français en 1999*/


SELECT Ouvrage.titre 
FROM Ecrit,Ouvrage
WHERE Ouvrage.langue ='Français' AND Ouvrage.types = 'informatique'  
AND Ecrit.IDOuvrage = Ouvrage.IDOuvrage AND Ecrit.annee = 1999


/* le nombre de livre que herblot arthur a emprunté   par stock*/

SELECT COUNT(Ouvrage.IDOuvrage) ,Ouvrage.titre, Stock.nStock
FROM Ouvrage,Stock,Inscrit,Emprunt
WHERE Ouvrage.IDOuvrage = Emprunt.IDOuvrage AND (Inscrit.nom = 'herblot' 
AND Inscrit.prenom = 'arthur') AND Ouvrage.IDOuvrage = Stock.IDOuvrage 
AND Emprunt.IDInscrit = Inscrit.IDInscrit
GROUP BY Stock.nStock


/*les livres qui ont été emprunté plus de deux fois*/

SELECT COUNT(Emprunt.IDEmprunt) , Ouvrage.titre
FROM Emprunt,Ouvrage
WHERE Emprunt.IDOuvrage = Ouvrage.IDOuvrage
GROUP BY Ouvrage.titre
HAVING COUNT(Emprunt.IDEmprunt) > 2

/*auteur de nationalité française qui ont ecrit des livres de type Cours sorti entre 1800 et 1900 
*/



SELECT DISTINCT Auteur.nom,Auteur.prenom
FROM Auteur,Ecrit,Ouvrage
WHERE Auteur.nationalité = 'française' AND Ouvrage.nature = 'Cours' 
AND (Ecrit.annee BETWEEN 1800 AND 1900)AND Ecrit.IDAuteur = Auteur.IDAuteur 
AND Ecrit.IDOuvrage = Ouvrage.IDOuvrage 



/*nom et prenom des inscrit qui n'ont fait aucun emprunt*/




SELECT Inscrit.nom ,Inscrit.prenom
FROM Inscrit
WHERE Inscrit.IDInscrit NOT IN (SELECT Emprunt.IDInscrit
                                FROM Emprunt,Ouvrage
                                WHERE 
                                Emprunt.IDOuvrage=Ouvrage.IDOuvrage)


/*Affiche les informations de tout les livres paru entre 2000 et 2005*/

SELECT * FROM `Info_de_l_ouvrage` 
WHERE ( Date_Parution BETWEEN 2000 AND 2005)
ORDER BY Date_parution




/*les livres sorti par la maison d'edition 'Edition de la martinere' entre 1800 et 1900 et 
 qui n'ont jamais été emprunté */

 SELECT Ouvrage.titre , Ouvrage.nature
FROM Ouvrage,Editeurs,Collections,Ecrit
WHERE ( Ecrit.annee BETWEEN 1800 AND 1900) 
AND Editeurs.nom = 'Edition de la martinere'
 AND Ecrit.IDOuvrage = Ouvrage.IDOuvrage 
 AND Editeurs.IDEditeurs = Collections.IDEditeurs 
 AND Ouvrage.IDOuvrage NOT IN (SELECT Emprunt.IDOuvrage
							   FROM Emprunt)



/*Pour chaque Ouvrage on trouve le nombre disponible y compris ceux dont 
le nombre est egal à 0 */

SELECT Ouvrage.titre, Stock.nombre_disponible
FROM Ouvrage LEFT JOIN Stock ON Ouvrage.IDOuvrage = Stock.IDOuvrage
ORDER BY Stock.nombre_disponible ASC



