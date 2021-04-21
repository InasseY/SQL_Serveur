/*PARTIE 5 
# SQL - Partie 5 : S�lection de donn�es

**Attention : Toutes les commandes que vous taperez devront �tre conserv�es dans un fichier .sql**  
**Bien respecter les m�thodes demand�es � chaque exercice**

## Exercice 1
Dans la table ***languages***, afficher toutes les donn�es de la table.

## Exercice 2
Dans la table ***languages***, afficher toutes les versions de **PHP**.

## Exercice 3
Dans la table ***languages***, afficher toutes les versions de **PHP** et de **JavaScript**.

## Exercice 4
Dans la table ***languages***, afficher toutes les lignes ayant pour id 3,5,7.

## Exercice 5
Dans la table ***languages***, afficher les deux premi�re entr�es de **JavaScript**.

## Exercice 6
Dans la table ***languages***, afficher toutes les lignes qui ne sont pas du **PHP**.

## Exercice 7
Dans la table ***languages***, afficher toutes les donn�es par ordre alphab�tique.*/

USE [webDevelopment]
SELECT * FROM [languages]
GO

USE [webDevelopment]
SELECT [version] FROM [languages] WHERE [langague] = 'PHP';
GO

USE [webDevelopment]
SELECT * FROM languages WHERE [langague] = 'Javascript' or language='PHP'
GO

USE [webDevelopment]
SELECT * FROM languages WHERE[id] IN (3, 5, 7);
GO

USE [webDevelopment]
SELECT TOP 2 * FROM languages WHERE [language] = 'Javascript';
GO

USE [webDevelopment]
SELECT * FROM languages WHERE [language] != 'PHP';
GO

USE [webDevelopment]
SELECT * FROM languages ORDER BY [language];
GO