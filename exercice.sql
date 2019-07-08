-- SQL - Partie 3 : Modifications de tables
-- Exercice 1 : Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
ALTER TABLE languages ADD versions VARCHAR(100);
-- Exercice 2: Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE frameworks ADD versions INT;
-- Exercice 3: Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
ALTER TABLE languages CHANGE versions version VARCHAR(100);
-- Exercice 4: Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE frameworks CHANGE name framework VARCHAR(100);
-- Exercice 5: Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
ALTER TABLE frameworks MODIFY versions VARCHAR(10);
-- TP : Dans la base codex, dans la table clients :
--        supprimer la colonne secondPhoneNumber
--        renommer la colonne firstPhoneNumber en phoneNumber
--        changer le type de la colonne phoneNumber en VARCHAR
--        ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
USE codex;
ALTER TABLE clients
  DROP secondPhoneNumber,
  CHANGE firstPhoneNumber phoneNumber INT;
-- En deux fois car : ERROR 1054 (42S22): Unknown column 'phoneNumber' in 'clients'
ALTER TABLE clients
  MODIFY phoneNumber VARCHAR(10),
  ADD zipCode VARCHAR(100),
  ADD city VARCHAR(100);
