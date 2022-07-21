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



-- 6. WHERE ET CONDITIONS