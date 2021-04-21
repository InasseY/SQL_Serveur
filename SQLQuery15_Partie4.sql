/*# SQL - Partie 4 : Insertion de données

**Bien respecter les méthodes demandées à chaque exercice**

## Exercice 1
Via une requête, dans la table ***languages***, insérez les données suivantes dans 2 colonnes (ex. Nom, Version) :
- JavaScript version 5
- PHP version 5.2
- PHP version 5.4
- HTML version 5.1
- JavaScript version 6
- JavaScript version 7
- JavaScript version 8
- PHP version 7

## Exercice 2
Via l'interface graphique de SQL Server Management Studio, dans la table ***frameworks***, insérez les données suivantes dans 2 colonnes (ex. Nom, Version):
- Symfony version 2.8
- Symfony version 3
- Jquery version 1.6
- Jquery version 2.10
*/
USE [webDevelopment]
INSERT INTO dbo.languages
([language],[version])
VALUES 
('PHP', 5),
 ('PHP',5.2),
 ('HTML', 5.4),
 ('Javascript',6),
 ('JavaScript', 7),
 ('JavaScript',8),
 ('PHP', 7);
GO

USE [webDevelopment]
INSERT INTO dbo.framework
([language],[version])
VALUES 
('Symfony', 2.8),
 ('Symfony',3),
 ('jQuery', 1.6),
 ('jQuery', 2.10);
GO