CREATE DATABASE IF NOT EXISTS Bibliothèque;
USE Bibliothèque;
drop table if exists Stock, Inscription, Emprunt, Employee, Inscrit, Ecrit, Ouvrage, Collections, Editeurs, Auteur;
DROP VIEW if exists Emprunts_en_cours, Inscrit_en_2020, Disponibilité_Ouvrage, Info_de_l_ouvrage;

CREATE TABLE Auteur (
    IDAuteur INT (20) NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    date_de_naissance VARCHAR(20) NOT NULL,
    date_de_deces VARCHAR(20),
    nationalité VARCHAR(30) NOT NULL,
    PRIMARY KEY (IDAuteur)
);

INSERT INTO Auteur VALUES 

       (2100,'rimbaud','alexandre','20-10-1850','10-08-1900','française'),

       (2101,'albert','olivier','26-09-1952','09-05-2004','allemande'),
       (2102,'pagnol','marcel','07-11-1902','02-01-1960','française'),
       (2103,'stevenberk','mark','06-03-1987',NULL,'allemande'),
       (2104,'blandy','jim','15-09-1890','08-09-1950','suisse'),
       (2105,'turing','angela','28-02-1895','28-07-1950','norvegienne'),
       (2106,'dupas','lucas','23-06-1913','30-07-1987','spagnole'),
       (2107,'pellicier','alan','11-12-1980',NULL,'allemande'),
       (2108,'lutz','christine','15-09-1938','01-06-1995','française'),
       (2109,'camos','antonio','18-03-1975',NULL,'italienne'),
       (2110,'folio','nathan','25-12-1812','09-04-1860','italienne'),
       (2111,'collins','Suzanne','03-10-1963',NULL,'française'),
       (2112,'JK' , 'Rowling','23-01-1985',NULL,'anglaise'),
       (2113,'victor','hugo','01-03-1890','12-05-1920','française'),
       (2114,'flaubert','gustave','25-01-1821','26-02-1880','française'),
       (2115,'de Balzac','honoré','10-11-1799','30-02-1850','anglaise'),
       (2116,'emile','zola','12-01-1840','12-05-1902','allemande'),
       (2117,'paul','adam','14-02-1862','03-06-1920','française');



CREATE TABLE  Employee (
    IDEmploye INT (20) NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR (30) NOT NULL,
    mot_de_passe VARCHAR (20) NOT NULL,
    adresse VARCHAR (100) NOT NULL,
    mail VARCHAR (50) NOT NULL,
    numero_de_telephone VARCHAR (30) NOT NULL,
    poste VARCHAR (50) NOT NULL,
    PRIMARY KEY (IDEmploye)
);
INSERT INTO Employee VALUES
     (80,'dupont','josé','adfkc263','Paris','dupont.jose@gmail.com','0632589423','acceuil'),
       (81,'Duplissi','jean','mljgrp459','massy-palaiseau','duplissi.jean@gmail.com','0756321591','conseillé'),
       (82,'John','mireille','smakzdj876','versailles','jogn.mireille@gmail.com','01267465259','archiviste'),
       (83,'cotillard','marie','jdlkzdj123','versailles','cotillard.marie@gmail.com','0612548923','archiviste'),
       (84,'Dujardin','julien','dlkjeze456','Pais','dujardin.julien@yahoo.fr','0635489652','acceuil'),
       (85,'bertrand','sarah','eshdk1426','Paris','bertrand.sarah@gmail.com','0663257952','conseillé'),
       (86,'brunet','pascal','skldkf523','Versailles','brunet.pascal@yahoo.fr','0756931453','conseillé'),
       (87,'albin','melania','pamSK892','Paris','albin.melania@gmail.com','0634189723','archiviste'),
       (88,'trump','pierre','aqmxnvb45','Guyancourt','trump.pierre@yahoo.fr','0712894563','bibliothecaire'),
       (89,'prince','julie','mdkffk45','antony','prince.julie56@gmail.com','0785231469','accueil'),
       (90,'hamad','liza','dkflzm799','Montreuil','hamad.liza@yahoo.fr','0923547892','conseillé'),
       (91,'steven','george','apmsxncb56','Paris','steven.goerge96@gmail.com','0698731141','bibliothecaire');
    

CREATE TABLE Inscrit(
    IDInscrit INT (100) NOT NULL,
    nom VARCHAR (30) NOT NULL,
    prenom VARCHAR (30) NOT NULL,
    adresse VARCHAR (100) NOT NULL,
    date_de_naissance VARCHAR(20) NOT NULL,
    mail VARCHAR (100) NOT NULL,
    PRIMARY KEY (IDInscrit)
);

INSERT INTO Inscrit VALUES

       (100,'Aubrey','diana','Paris','03-07-1987','aubrey.diana@gmail.com'),
       (101,'gerard','tatiana','Versailles','23-11-1999','gerard.tatiana7@yahoo.fr'),
       (102,'Helly','mikael','Guyancourt','09-04-1980','helly.mikael123@gmail.com'),
       (103,'chris','evans','Palaiseau','28-01-1988','chris.evans6@yahoo.com'),
       (104,'Chik','sabrina','Versailles','30-02-1998','chik.sabrina@gmail.com'),
       (105,'perodo','andre','Paris','06-02-1995','perodo.andre@gmail.com'),
       (106,'angy','christophe','Montreuil','08-12-1992','angy.christophe5@gmail.com'),
       (107,'Autessier','maxime','massy-palaiseau','14-07-1996','autessier.maxime7@gmail.com'),
       (108,'garge','sonia','yvelline','25-02-2000','garge.sonia9@yahoo.fr'),
       (109,'herblot','arthur','Orsay','18-03-2001','herblot.arthur45@gmail.com'),
       (110,'hervé','guerric','Paris','13-05-1997','herve.guerric89@yahoo.fr'),
       (111,'kamlichi','lounis','Paris','23-10-1990','kamlichi.lounis48@gmail.com'),
       (112,'huteau','arnaud','Montreuil','14-01-1986','huteau.arnaud56@outlook.com'),
       (113,'Leden','marine','igny','04-09-1993','leden.marine7@outlook.fr'),
       (114,'santoro' ,'mihai','Saint-Quentin-en-Yvellines','18-06-2002','santoro.mihai63@outlook.fr'),
       (115,'ferrer','elena','Paris','12-06-1993','elena.ferrer@gmail.com'),
       (116,'golovin','tatiana','Versailles','05-12-1999','golovin.tatiana@outlook.fr'),
       (117,'dechy','natalie','Orsay','28-02-1997','dechy.natalie@yahoo.fr'),
       (118,'karlovic','lilia','Antony','26-06-1996','karlovic.lilia@gmail.com'),
       (119,'henin','justine','Creteil','18-05-1998','henin.justine@gmail.com'),
       (120,'moya','carlos','Argenteuil','12-12-1988','moya.carlos25@outlook.fr'),
       (121,'safin','marat','Creteil','03-10-1987','safin.marat14@yahoo.fr'),
       (122,'rochus','olivier','Paris','15-08-1989','rochus.olivier45@gmail.com'),
       (123,'mauresmo','amelie','Malakoff','30-01-1997','mauresmo-amelie956@outlook.fr'),
       (124,'parmentier','pauline','Cergy','31-12-1993','parmentier-pauline9@gmail.com'),
       (125,'williams','venus','Creteil','01-02-1994','williams25-venus@gmail.com'),
       (126,'andreev','fabrice','Pantin','02-07-1995','andreev12-fabrice@outlook.fr'),
       (127,'spadea','vincent','Cergy','16-11-1992','spadea_vincent4@gmail.com'),
       (128,'stepanek','radek','Malakoff','19-11-2000','stepanek-radek56@outlook.fr'),
       (129,'gasquet','anna','Argenteuil','29-09-2003','gasquet.anna78@gmail.com'),
       (130,'sela','sam','Saint-Quentin-en-Yvellines','06-06-2001','sela-samou@outlook.fr'),
       (131,'querrey','olga','Paris','12-09-1987','querrey.olga1997@gmail.com'),
       (132,'bartoli','marion','Malakoff','22-03-2000','bartoli-marion45@yahoo.fr'),
       (133,'simon','gilles','Palaiseau',' 19-11-2001','simon.gilles5@gmail.com');

CREATE TABLE Editeurs(
    IDEditeurs INT (20) NOT NULL,
    nom VARCHAR (30) NOT NULL,
    site_internet VARCHAR (100) NOT NULL,
    adresse_mail VARCHAR (50) NOT NULL,
    adresse_postale VARCHAR (100) NOT NULL,
    numero_de_telephone VARCHAR (20) NOT NULL,
    PRIMARY KEY (IDEditeurs)
);
    
INSERT INTO Editeurs VALUES
       (200,'Alibin Michel','Alibin-Michel.com','Alibin.michel@gmail.com','2 Rue les cerisier Paris','0153214489'),
       (201,'Odile Jacob','Odile-Jacob@gmail.com','Odile.jacob25@gmail.com','5 rue de Saclay Antony','0136542899'),
       (202,'Edition de la martinere','martinere-Paris.com','Edition-martinere75@gmail.com','38 rue Auguste Paris','0154128971'),
       (203,'Livre de Poche','livre-Poche-Edition.com','livre-poche78@gmail.com','London','0985231456'),
       (204,'les editions de minuit','edition-minuit.com','edition-minuit78@gmail.com','6 rue michelet Versailles','0156321489'),
       (205,'le leopard masqué','leopard-masqué-edition.com','leopard-masqué@gmail.com','2 rue de la republique Marseille','0152454548'),
       (206,'Gallimard Jeunesse','gallimard-jeunesse.fr','gallimard.jeunesse@gmail.com','3 rue les gonesse Cergy','0123189532'),
       (207,'les Editions Flammarion','editions.flammarion.com','editions-flammarion@gmail.com','37, quai Panhard-et-Levassor Paris','0140513100');
       

CREATE TABLE Collections (
    nom_collection VARCHAR (100) NOT NULL,
    IDEditeurs  INT (20) NOT NULL,
    PRIMARY KEY (nom_collection),
    FOREIGN KEY (IDEditeurs) REFERENCES Editeurs (IDEditeurs)
);
INSERT INTO Collections VALUES 
       ('Harry Potter',200),
       ('Disney',201),
       ('le Seigneur des Anneaux',205),
       ('les Tuniques bleues',203),
       ('Hunger Games',204),
       ('Science',202),
       ('Histoire',206),
       ('Divertissement',207);



CREATE TABLE Ouvrage (
    IDOuvrage INT (20) NOT NULL,
    titre VARCHAR (100) NOT NULL,
    nom_Collection VARCHAR (100) NOT NULL,
    formats VARCHAR (50) NOT NULL,
    langue VARCHAR (50) NOT NULL,
    types VARCHAR (50) NOT NULL,
    nature VARCHAR (100) NOT NULL,
    PRIMARY KEY (IDOuvrage),
    FOREIGN KEY (nom_Collection) REFERENCES Collections (nom_collection)
    
);
INSERT INTO Ouvrage VALUES 
     (300,'Les reliques de la mort','Harry Potter','A4','Français','fantastique','roman'),
       (301,'La Machine de Turing','Science','A4','Français','informatique','Cours'),
       (302,'Learning Python','Science','A5','Anglais','informatique','Cours'),
       (303,'les Tuniques bleues - tome 2 : La Rose de Bantry','les Tuniques bleues','A4','Français','fantastique','BD'),
       (304,'Le Secret','Divertissement','coffret','Français','drame','roman'),
       (305,'Berlin','Histoire','A5','Allemand','histoire','roman'),
       (306,'Tout JavaScript','Science','A4','Français','informatique','Cours'),
       (307,'Principes de chimie','Science','A4','Français','chimie','Cours'),
       (308,'Comprendre la Physique','Science','A4','Français','physique','Cours'),
       (309,'Livre de Jacob','Divertissement','coffret','Français','biographie','roman'),
       (310,'Hunger Games : la revolte','Hunger Games','A4','Anglais','fantastique','roman'),
       (311,'la chambre des secrets','Harry Potter','A4','Français','fantastique','roman'),
       (312,'Origine des especes','Science','A5','Français','Science de la vie et de la nature','Cours'),
       (313,'Apprendre à programmer en C','Science','A4','Français','informatique','Cours'),
       (314,'Cryptography','Science','A4','Anglais','informatique','Cours'),
       (315,'Maths generale','Science','A4','Français','mathematique','Cours'),
       (316,'Learning c++','Science','A4','Anglais','informatique','Cours'),
       (317,'Beloved','Divertissement','A4','Anglais','romance','BD'),
       (318,'Guerre et Paix','Histoire','A4','Français','histoire','roman'),
       (319,'Ramayana','Divertissement','A4','Français','romance','poesie'),
       (320,'Mrs Dalloway','le Seigneur des Anneaux','A4','Anglais','drame','roman'),
       (321,'Algebre','Science','A4','Français','mathematique','Cours'),
       (322,'Aladdin','Disney','coffret','Français','aventure','roman'),
       (323,'Le roi lion','Disney','A4','Français','aventure','roman'),
       (324,'Hunger Games : l''embrasement','Hunger Games','A4','Français','fantastique','roman'),
       (325,'le Grand Atlas de l''Astronomie','Science','A4','Français','physique','Cours'),
       (326,'Anatomy','Science','A4','Anglais','Science de la vie et de la nature','Cours'),
       (327,'Reseaux informatique','Science','A4','Français','informatique','Cours'),
       (328,'securité informatique','Science','A4','Français','informatique','Cours'),
       (329,'Histoire de france','Histoire','A4','Français','histoire','Cours'),
       (330,'Secret d''histoire','Histoire','A4','Français','histoire','Cours'),
       (331,'les maths en BD','Science','A4','Français','mathematique','BD'),
       (332,'les Maths pour les nuls','Science','A4','Français','mathematique','Cours'),
       (333,'initiation à SQL','Science','A4','Français','informatique','Cours'),
       (334,'SQL','Science','Anglais','A4','informatique','Cours');



CREATE TABLE Stock (
    nStock INT (20) NOT NULL,
    nombre_emprunte INT (100) NULL,
    nombre_total INT (100) NOT NULL,
    nombre_disponible INT (50) NULL,
    IDOuvrage INT (20) NOT NULL,
    PRIMARY KEY (nStock),
    FOREIGN KEY (IDOuvrage) REFERENCES Ouvrage (IDOuvrage)
);
INSERT INTO Stock VALUES 
      (01,10,10,0,300),
       (02,2,30,28,301),
       (03,10,50,40,302),
       (04,6,10,4,303),
       (05,8,15,7,304),
       (06,7,10,3,305),
       (07,12,30,18,306),
       (08,5,20,15,307),
       (09,2,10,8,308),
       (10,1,5,4,309),
       (11,5,5,0,310),
       (12,5,10,5,311),
       (13,10,20,10,312),
       (14,3,30,27,313),
       (15,6,10,4,314),
       (16,9,16,7,315),
       (17,12,20,8,316),
       (18,7,15,8,317),
       (19,2,5,3,318),
       (20,1,4,3,319),
       (21,3,6,3,320),
       (22,13,20,7,321),
       (23,10,12,2,322),
       (24,1,3,2,323),
       (25,0,5,5,324),
       (26,0,1,1,325),
       (27,0,2,2,326),
       (28,0,5,5,327),
       (29,0,2,2,328),
       (30,1,1,0,329),
       (31,0,5,5,330),
       (32,0,3,3,331),
       (33,2,5,3,332),
       (34,0,5,5,333),
       (35,0,6,6,334);


CREATE TABLE Emprunt (
    IDEmprunt INT (20) NOT NULL,
    IDOuvrage INT (20) NOT NULL,
    IDInscrit INT (20) NOT NULL,
    IDEmploye INT (20) NOT NULL,
    date_debut VARCHAR (20) NOT NULL,
    date_fin VARCHAR (20) NOT NULL,
    rendu BOOLEAN ,
    PRIMARY KEY (IDEmprunt) ,
    FOREIGN KEY (IDOuvrage) REFERENCES Ouvrage (IDOuvrage),
    FOREIGN KEY (IDInscrit) REFERENCES Inscrit (IDInscrit),
    FOREIGN KEY (IDEmploye) REFERENCES Employee (IDEmploye)
);
INSERT INTO Emprunt VALUES 
       (400,301,101,87,'01-12-2019','15-12-2019',TRUE),
       (401,301,102,82,'03-01-2020','10-01-2020',TRUE),
       (402,302,101,87,'02-04-2020','10-04-2020',TRUE),
       (403,302,104,82,'12-05-2018','14-05-2018',TRUE),
       (404,302,105,82,'02-04-2019','12-04-2019',TRUE),
       (405,301,112,81,'10-01-2018','12-01-2018',TRUE),
       (406,303,114,81,'25-12-2020','02-01-2021',FALSE),
       (407,304,114,87,'28-03-2020','30-03-2020',TRUE),
       (408,301,114,82,'02-12-2020','10-01-2021',FALSE),
       (409,305,113,87,'23-09-2019','01-10-2019',TRUE),
       (410,305,103,82,'16-10-2018','20-10-2018',TRUE),
       (411,306,105,87,'14-04-2017','21-04-2017',TRUE),
       (412,306,108,81,'09-06-2018','12-06-2018',TRUE),
       (413,306,102,87,'12-09-2020','15-09-2020',TRUE),
       (414,307,106,81,'19-10-2017','23-10-2017',TRUE),
       (415,307,105,87,'08-12-2020','19-12-2020',TRUE),
       (416,307,109,82,'07-11-2019','17-11-2019',TRUE),
       (417,304,109,81,'12-03-2020','22-03-2020',TRUE),
       (418,304,106,87,'04-09-2019','07-10-2019',TRUE),
       (419,305,107,82,'12-12-2019','12-01-2020',TRUE),
       (420,308,107,81,'10-01-2018','10-02-2018',TRUE),
       (421,308,109,87,'24-05-2017','03-06-2017',TRUE),
       (422,308,109,81,'17-05-2018','22-05-2018',TRUE),
       (423,309,107,82,'24-04-2020','04-05-2020',TRUE),
       (424,309,109,81,'17-02-2020','03-03-2020',TRUE),
       (425,309,106,82,'25-04-2014','04-05-2014',TRUE),
       (426,304,110,87,'26-09-2015','10-10-2016',TRUE),
       (427,310,110,82,'22-07-2016','01-08-2016',TRUE),
       (428,310,111,81,'03-01-2017','03-02-2017',TRUE),
       (429,310,105,82,'17-05-2018','02-06-2018',TRUE),
       (430,311,110,87,'08-03-2020','19-03-2020',TRUE),
       (431,311,111,81,'09-08-2017','01-09-2017',TRUE),
       (432,311,101,82,'09-08-2017','01-09-2017',TRUE),
       (433,300,109,81,'12-03-2020','22-03-2020',TRUE),
       (434,300,112,87,'24-03-2020','29-03-2020',TRUE),
       (435,300,113,82,'12-08-2020','22-09-2020',TRUE),
       (436,312,100,87,'30-06-2019','03-07-2019',TRUE),
       (437,300,100,82,'12-03-2017','22-03-2017',TRUE),
       (438,312,109,81,'03-12-2015','22-01-2016',TRUE),
       (439,312,102,87,'13-03-2019','22-03-2019',TRUE),
       (440,312,107,82,'10-11-2020','22-11-2020',TRUE),
       (441,313,108,81,'02-07-2016','22-07-2016',TRUE),
       (442,313,100,87,'12-12-2020','22-01-2021',FALSE),
       (443,314,114,82,'04-01-2018','22-02-2018',TRUE),
       (444,314,101,87,'25-05-2019','29-05-2019',TRUE),
       (445,315,106,82,'11-03-2014','22-03-2014',TRUE),
       (446,315,104,81,'29-06-2020','22-07-2020',TRUE),
       (447,316,103,87,'18-01-2019','22-02-2019',TRUE),
       (448,316,109,82,'17-04-2018','26-04-2018',TRUE),
       (449,317,110,87,'29-07-2020','11-08-2020',TRUE),
       (450,318,110,81,'13-02-2016','22-03-2016',TRUE),
       (451,319,112,82,'12-09-2018','01-10-2018',TRUE),
       (452,320,111,87,'12-03-2020','22-03-2020',TRUE),
       (453,321,113,81,'04-04-2020','14-04-2020',TRUE),
       (454,321,100,82,'23-06-2015','01-07-2015',TRUE),
       (455,321,104,87,'17-01-2019','22-02-2019',TRUE),
       (456,314,108,81,'08-08-2017','28-08-2017',TRUE),
       (457,314,106,82,'07-10-2018','22-10-2018',TRUE),
       (458,320,103,81,'18-01-2020','22-02-2020',TRUE),
       (459,319,105,87,'11-05-2020','21-05-2020',TRUE),
       (460,318,101,82,'26-02-2020','13-03-2020',TRUE),
       (461,332,129,87,'30-12-2020','26-01-2021',FALSE),
       (462,329,133,82,'08-01-2021','28-01-2021',FALSE),
       (463,322,109,91,'03-04-2018','28-04-2018',TRUE),
       (464,323,133,91,'18-11-2019','02-12-2019',TRUE);



CREATE TABLE Inscription (
    IDEmploye INT (20) NOT NULL,
    IDInscrit INT (20) NOT NULL,
    annee INT (10) NOT NULL,
    PRIMARY KEY (IDEmploye , IDInscrit, annee),
    FOREIGN KEY (IDemploye) REFERENCES Employee (IDEmploye),
    FOREIGN KEY (IDInscrit) REFERENCES Inscrit (IDInscrit)
);
INSERT INTO Inscription VALUES 
       (91,100,2016),
       (91,100,2017),
       (88,100,2018),
       (88,100,2019),
       (91,100,2020),
       (91,101,2017),
       (91,101,2019),
       (88,101,2020),
       (91,102,2019),
       (91,102,2020),
       (88,103,2018),
       (91,103,2019),
       (88,103,2020),
       (91,104,2018),
       (91,104,2019),
       (88,104,2020),
       (91,105,2017),
       (91,105,2018),
       (88,105,2019),
       (88,105,2020),
       (91,106,2014),
       (88,106,2017),
       (91,106,2018),
       (91,106,2019),
       (91,107,2018),
       (88,107,2019),
       (88,107,2020),
       (91,108,2017),
       (91,108,2016),
       (88,108,2018),
       (88,109,2018),
       (91,109,2015),
       (91,109,2017),
       (91,109,2019),
       (88,109,2020),
       (91,110,2016),
       (91,110,2020),
       (88,110,2015),
       (91,111,2020),
       (88,112,2018),
       (88,112,2020),
       (91,113,2019),
       (91,113,2020),
       (88,114,2018),
       (88,114,2020),
       (88,115,2020),
       (91,116,2020),
       (88,117,2020),
       (82,118,2020),
       (91,119,2019),
       (82,120,2018),
       (83,121,2020),
       (91,122,2017),
       (82,123,2016),
       (82,123,2020),
       (91,124,2019),
       (83,125,2020),
       (88,126,2015),
       (89,127,2015),
       (88,128,2016),
       (91,129,2017),
       (87,130,2020),
       (88,131,2018),
       (91,132,2020),
       (89,133,2017),
       (91,133,2020);



CREATE TABLE Ecrit(
    IDAuteur INT (20) NOT NULL,
    IDOuvrage INT (20) NOT NULL,
    annee INT (10) NOT NULL,
    PRIMARY KEY (IDAuteur , IDOuvrage ,annee),
    FOREIGN KEY (IDAuteur) REFERENCES Auteur (IDAuteur),
    FOREIGN KEY (IDOuvrage) REFERENCES Ouvrage (IDOuvrage)
);
INSERT INTO Ecrit VALUES 
       (2100,301,1899),
       (2102,302,1935),
       (2112,300,1987),
       (2103,303,1998),
       (2104,304,1934),
       (2101,305,1995),
       (2105,306,1989),
       (2106,307,2001),
       (2107,308,2004),
       (2108,309,1930),
       (2109,310,2009),
       (2112,311,1985),
       (2110,312,1845),
       (2111,313,1999),
       (2100,314,1885),
       (2100,315,1900),
       (2111,316,2001),
       (2103,317,2000),
       (2108,318,1920),
       (2104,319,1932),
       (2103,320,1996),
       (2100,321,1899),
       (2112,322,1950),
       (2112,323,1940),
       (2112,324,1930),
       (2113,325,1850),
       (2113,326,1851),
       (2113,327,1853),
       (2114,328,1850),
       (2115,329,1912),
       (2115,330,1920),
       (2115,331,1913),
       (2116,332,1901),
       (2117,333,1999),
       (2117,334,1899);


CREATE VIEW Emprunts_en_cours
  (Titre, Emprunteur, Employe, Debut_Emprunt, Date_Rendu_Prevue)
  AS SELECT O.titre, CONCAT(I.nom," ",I.prenom), CONCAT(E.nom," ",E.prenom), P.date_debut, P.date_fin
  FROM Ouvrage O, Inscrit I, Employee E, Emprunt P
  WHERE(P.IDInscrit = I.IDInscrit AND P.IDEmploye = E.IDEmploye 
    AND P.IDOuvrage = O.IDOuvrage AND P.rendu = FALSE)
  ORDER BY O.titre;


CREATE VIEW Inscrit_en_2020
  (IDInscrit, Inscrit, Employe_qui_a_inscrit)
  AS SELECT Ins.IDInscrit ,CONCAT(I.nom, " ",I.prenom), CONCAT(E.nom, " ",E.prenom)
  FROM Inscrit I, Employee E, Inscription Ins
  WHERE(Ins.annee = 2020 AND Ins.IDInscrit = I.IDInscrit AND Ins.IDEmploye = E.IDEmploye)
  ORDER BY I.nom;

CREATE VIEW Disponibilité_Ouvrage
  (Ouvrage, Disponible)
  AS SELECT
    CASE 
      WHEN O.nom_Collection IS NOT NULL THEN CONCAT(O.nom_Collection, ": ",O.titre)
      WHEN O.nom_Collection IS NULL THEN O.titre
    END,
    CASE 
      WHEN S.nombre_disponible = 0 THEN 'Non'
      WHEN S.nombre_disponible > 0 THEN 'Oui'
    END
  FROM Ouvrage O, Stock S
  WHERE(O.IDOuvrage = S.IDOuvrage)
  ORDER BY O.nom_Collection;

CREATE VIEW Info_de_l_ouvrage
  (Titre, Collection, Format, Langue, Type, Nature, Auteur, Editeur, Date_Parution)
  AS SELECT O.titre, O.nom_Collection, O.formats, O.langue, O.types, 
  O.nature, CONCAT(A.nom, " ",A.prenom), 
  CASE
    WHEN O.nom_Collection = C.nom_Collection AND C.IDEditeurs = Ed.IDEditeurs THEN Ed.nom
    WHEN O.nom_Collection IS NULL THEN NULL
  END, Ec.annee
  FROM Ouvrage O, Auteur A, Editeurs Ed, Ecrit Ec, Collections C
  WHERE(O.IDOuvrage = Ec.IDOuvrage AND Ec.IDAuteur = A.IDAuteur 
    AND ((O.nom_Collection = C.nom_Collection AND C.IDEditeurs = Ed.IDEditeurs) OR O.nom_Collection IS NULL)
    )
  GROUP BY O.IDOuvrage
  ORDER BY O.titre;

DROP USER Inscrit@'adresseip';
DROP USER Employe@'adresseip';
DROP USER Gerant@'adresseip';

FLUSH PRIVILEGES;

CREATE USER Inscrit@'adresseip' IDENTIFIED BY 'mot_de_passe';
CREATE USER Employe@'adresseip' IDENTIFIED BY 'mot_de_passe';
CREATE USER Gerant@'adresseip' IDENTIFIED BY 'mot_de_passe';

GRANT SELECT 
  ON Auteur
  TO Inscrit;

GRANT SELECT 
  ON Collections
  TO Inscrit;

GRANT SELECT 
  ON Ecrit
  TO Inscrit;

GRANT SELECT 
  ON Ouvrage
  TO Inscrit;

GRANT SELECT 
  ON Editeurs
  TO Inscrit;

GRANT SELECT 
  ON Disponibilité_Ouvrage
  TO Inscrit;

GRANT SELECT 
  ON Info_de_l_ouvrage
  TO Inscrit;

GRANT ALL
  ON Auteur
  TO Employe;

GRANT ALL
  ON Collections
  TO Employe;

GRANT ALL
  ON Ecrit
  TO Employe;

GRANT ALL
  ON Ouvrage
  TO Employe;

GRANT ALL
  ON Editeurs
  TO Employe;

GRANT ALL
  ON Inscrit
  TO Employe;

GRANT ALL
  ON Inscription
  TO Employe;

GRANT ALL
  ON Stock
  TO Employe;

GRANT ALL
  ON Emprunt
  TO Employe;

GRANT SELECT
  ON Employee
  TO Employe;

GRANT SELECT
  ON Emprunts_en_cours
  TO Employe;

GRANT SELECT
  ON Inscrit_en_2020
  TO Employe;

GRANT SELECT
  ON Disponibilité_Ouvrage
  TO Employe;

GRANT SELECT
  ON Info_de_l_ouvrage
  TO Employe;

GRANT ALL
  ON *
  TO Gerant;