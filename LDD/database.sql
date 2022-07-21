-- 1.Creation de la base de donnees
-- CREATE DATABASE <nom_base_de_donnees>;
CREATE DATABASE crm_poei_17_juillet;

-- 2.Lister toutes les BD
SHOW DATABASES;

-- 3.Utiliser une BD
-- USE <nom_base_de_donnees>
USE crm_poei_17_juillet;

-- 3.Creation de la table client
CREATE TABLE clients(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    telephone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    entreprise VARCHAR(50) NOT NULL
);

