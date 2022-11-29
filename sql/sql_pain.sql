--Aleksandrs Baranovskis 12.DIT
DROP TABLE Demo;
CREATE TABLE Ipasnieks(
  Personas_kods varchar(20) PRIMARY KEY NOT NULL,
  Vards varchar(30) NOT NULL,
  Uzvards varchar(30) NOT NULL,
  Telefona_numurs varchar(15),
  Dzivesvietas_iela varchar(100) NOT NULL,
  Majas_numurs varchar(5),
  Dzivokla_numurs int,
  Valsts varchar(56) NOT NULL,
  Pilseta varchar(85) NOT NULL,
  Pasta_indekss varchar(10) NOT NULL,
  E_pasts varchar(100),
  
  UNIQUE(Personas_kods)
);

CREATE TABLE Automasina(
  Automasinas_numurs varchar(20) PRIMARY KEY NOT NULL,
  Ipasnieka_personas_kods varchar(20),
  Marka varchar(20) NOT NULL,
  Krasa varchar (20) NOT NULL,
  Tips varchar(20) NOT NULL,
  
  UNIQUE(Automasinas_numurs),
  FOREIGN KEY(Ipasnieka_personas_kods) REFERENCES Ipasnieks(Personas_kods)
);

CREATE TABLE Foto_radars(
  Foto_radara_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Atrasanas_vieta varchar(100),
  
  UNIQUE(Foto_radara_ID)
);

CREATE TABLE Atruma_parkapums(
  Parkapuma_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Foto_radara_ID INTEGER,
  Automasinas_numurs varchar(20),
  Automasinas_atrums_KMH varchar(10) NOT NULL,
  Atlautais_atrums_KMH varchar(10) NOT NULL,
  
  UNIQUE(Parkapuma_ID),
  FOREIGN KEY(Foto_radara_ID) REFERENCES Foto_radara_ID(Foto_radars),
  FOREIGN KEY(Automasinas_numurs) REFERENCES Automasinas_numurs(Automasina)
);

CREATE TABLE Negadijums(
  Negadijuma_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Notikuma_vieta varchar(100) NOT NULL,
  Tips varchar(50) NOT NULL,
  Apraksts varchar(1000) NOT NULL,
  
  UNIQUE(Negadijuma_ID)
);

CREATE TABLE automasina_negadijums(
  Automasinas_numurs varchar(20),
  Negadijuma_ID INTEGER,
  
  FOREIGN KEY(Automasinas_numurs) REFERENCES Automasinas_numurs(Automasina),
  FOREIGN KEY(Negadijuma_ID) REFERENCES Negadijuma_ID(Negadijums)
);

INSERT INTO Ipasnieks(Personas_kods, Vards, Uzvards, Telefona_numurs, Dzivesvietas_iela, Majas_numurs, Dzivokla_numurs, Valsts, Pilseta, Pasta_indekss, E_pasts)
VALUES('190704-20132', 'Aleksandrs', 'Baranovskis', '+37120407703', 'Druvienas iela', '34', '10', 'Latvija', 'Riga', 'LV-1079', 'baranovskis83@gmail.com'),
('123456-12345', 'Janis', 'Peteris', '+37121251253', 'Jaunkapli', NULL, NULL, 'Latvija', 'Dobele', 'LV-3456', NULL),
('X4RTBPFW4', 'Marie', 'Martin', '+3328614666', 'Rue Alphonse Daudet', '1', '4', 'France', 'Paris', '75014', 'tavamamma@gmail.com');

INSERT INTO Automasina(Automasinas_numurs, Ipasnieka_personas_kods, Marka, Krasa, Tips)
VALUES('EW-6969','190704-20132','Ferrari','Sarkans','Sporta'),
('RU-4921','123456-12345','Tesla','Peleks','Kravas'),
('DE-3875','123456-12345','Hundai','Balts','Sedans'),
('FR-7856','X4RTBPFW4','Porche','Zils','Mini');

INSERT INTO Foto_radars(Atrasanas_vieta)
VALUES('100 km attaluma no Rigas uz sosejas A2');

INSERT INTO Atruma_parkapums(Foto_radara_ID, Automasinas_numurs, Atlautais_atrums_KMH, Automasinas_atrums_KMH)
VALUES('1','EW-6969','110','150'),
('1','RU-4921','110','132'),
('1','FR-7856','110','123');

INSERT INTO Negadijums(Negadijuma_ID, Notikuma_vieta, Tips, Apraksts)
VALUES(NULL, 'Centra McDonalds krustjums','sadursme','Masina braucot pari sarkajai gaismai iebrauca cita masina'),
(NULL, 'Maskacka','avarija','Mashinai braucot uzspraga riepa un notrieca omiti'),
(NULL, 'Purvciems, pie 64vsk','sadursme','Kravas masina braucot ietriecas minijam kurs brauca pa neapreizo joslu');

INSERT INTO automasina_negadijums(Automasinas_numurs, Negadijuma_ID)
VALUES('1','EW-6969'),
('1','DE-3875'),
('2','RU-4921'),
('3','RU-4921'),
('3','FR-7856');

SELECT * FROM Atruma_parkapums;
SELECT * FROM Automasina;
SELECT * FROM automasina_negadijums;
SELECT * FROM Foto_radars;
SELECT * FROM Ipasnieks;
SELECT * FROM Negadijums;
