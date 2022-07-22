--EN => DML : Data manipulation language
--FR => LMD : Langage de manipulation de donnees

-- 1.INSERER une seule ligne
INSERT INTO clients(prenom,nom, email, telephone, entreprise)
VALUES("Christian","Lisangola","christian.lisangola@gmail.com","+33656886477","Coderbase");

insert into clients (prenom, nom, email, telephone, entreprise) values ('Faustina', 'Webbe', 'fwebbe0@xinhuanet.com', '+238 564 247 0913', 'Youbridge');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Dulsea', 'Francie', 'dfrancie1@cargocollective.com', '+62 486 931 6994', 'Fivechat');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Nerti', 'Bloomer', 'nbloomer2@wiley.com', '+63 736 443 9828', 'Flashset');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Roger', 'Cleaves', 'rcleaves3@rakuten.co.jp', '+7 180 210 7969', 'Kwilith');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Gui', 'Rentcome', 'grentcome4@surveymonkey.com', '+420 394 262 7979', 'Quinu');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Lavina', 'Allberry', 'lallberry5@buzzfeed.com', '+33 111 181 2427', 'Jetpulse');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Hewe', 'Bargh', 'hbargh6@dropbox.com', '+7 980 756 5239', 'Gigazoom');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Far', 'Alderwick', 'falderwick7@devhub.com', '+86 791 539 8927', 'Yakijo');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Wald', 'Mannie', 'wmannie8@redcross.org', '+86 934 473 9677', 'Feedmix');
insert into clients (prenom, nom, email, telephone, entreprise) values ('Martita', 'Deverille', 'mdeverille9@google.fr', '+86 910 188 2115', 'Centimia');

-- 2.INSERER une plusieurs lignes
INSERT INTO clients(prenom,nom, postnom,email, telephone, entreprise)
VALUES("Christophe","Gueroult","","c.gueroult@sopra.io","+33650086477","Sopra Steria"),
("Jean","Zozor","jean@gmail.com","","+32565656565","Google");

-- 3.SELECT : Toutes les colonnes
SELECT * FROM clients;

-- 4.SELECT : Quelques colonnes
SELECT nom,prenom,entreprise FROM clients;

-- 5. WHERE ET LIKE
-- christian
-- christophe
-- christine
SELECT prenom,nom,email,entreprise FROM clients WHERE prenom LIKE "chris%";-- chaine qui commencent par "chris"

-- lisangola
-- cocacola
SELECT prenom,nom,email,entreprise FROM clients WHERE nom LIKE "%ola"; -- chaine qui se terminent par "ola"

-- tous les clients ayant une adresse qui contient "@wordpress"
-- chris@wordpress.com
SELECT prenom,nom,email,entreprise FROM clients WHERE email LIKE "%@wordpress%";

-- 6.LIMITER LE RESULTAT
SELECT prenom,nom,email,entreprise FROM clients LIMIT 15;



-- 6. WHERE ET CONDITIONS
SELECT prenom,nom,email,entreprise,age,pays FROM clients WHERE age>=20 AND age<=50 LIMIT 20;
SELECT prenom,nom,email,entreprise,age,pays FROM clients WHERE age BETWEEN 20 AND 50 LIMIT 20;

-- 7. Lister tous les clients qui sont mineeur(<18) , qui sont des americains(USA)
SELECT prenom,nom,email,entreprise,age,pays FROM clients WHERE age<18 AND pays="United States" LIMIT 20;

-- 8. Lister les clients Chinois, Indonesia, Americains
SELECT prenom,nom,email,entreprise,age,pays FROM clients WHERE pays="United States" OR pays="China" OR pays="Indonesia" LIMIT 20;
SELECT prenom,nom,email,entreprise,age,pays FROM clients WHERE pays IN ("United States","China","Indonesia") LIMIT 20;


-- 9. ORDER BY
-- ASC : Croissant
-- DESC : Decroissant
SELECT prenom,nom,email,entreprise,age,pays FROM clients ORDER BY prenom ASC LIMIT 20;

-- ORDER BY : plusieurs criteres
SELECT prenom,nom,email,entreprise,age,pays FROM clients ORDER BY age ASC,prenom ASC  LIMIT 20;

-- 10.  DISTINCT : Eliminer les duplications
SELECT DISTINCT pays FROM clients ORDER BY pays;

-- 11.Fusionner les donnes de plusieurs colonnes
SELECT CONCAT(prenom," ",nom),pays FROM clients LIMIT 20;

-- 12.Fusionner les donnes de plusieurs colonnes + alias
SELECT CONCAT(prenom," ",nom) AS full_name ,pays as country FROM clients LIMIT 20;

-- 13.UPDATE : Mettre à jour un enregistrement
-- a. Mettre à jours tous les enresgistrements de la table
UPDATE clients SET postnom="Zozor";

-- b. Mettre à jour un seul enregisterement

UPDATE clients SET postnom="Zozor", email="zozor@hotmail.fr" WHERE id=2;
UPDATE clients SET nom="Lisangola",prenom="Christian",entreprise="Coderbase",email="chris@gmail.com" WHERE id=2;
UPDATE clients SET postnom="Zozor" WHERE id=2;
UPDATE clients SET email="chris@gmail.com" WHERE id=2 AND pays="Sweden";
-- 14. DELETE : Supprimer un enregistrement
-- Supprimer l'enregistrement avec id = 7
DELETE FROM clients WHERE id=7;

-- Supprimer tous les Thailandais
DELETE FROM clients WHERE pays="Thailand";

-- 15.Clé étrangeres
CREATE TABLE telephones(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(20) NOT NULL, 
    id_client INT,
    -- Suppression de la ligne quand on supprimer l'enregistrement du même id dans la table clients
    FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE CASCADE,

     -- Mis à jour de la ligne id_client quand la valeur de `id` de la table client change
    -- FOREIGN KEY(id_client) REFERENCES clients(id) ON UPDATE CASCADE,

     -- Mettre la valeur de id_client a NULL quand on supprimer l'enregistrement du même id dans la table clients
    -- FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE SET NULL,

    -- Refus de suppression
    --FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE RESTRICT,
);