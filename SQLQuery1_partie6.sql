/*# SQL - Partie 6 : S�lection de donn�es - �largir les possibilit�s de la clause WHERE

**Attention : Toutes les commandes que vous taperez devront �tre conserv�es dans un fichier .sql**  
**Bien respecter les m�thodes demand�es � chaque exercice**
USE [webDevelopment]
SELECT * from frameworks WHERE [version] = '2' OR [version] LIKE '2.%';
GO
SELECT * from frameworks WHERE id IN (2,3);
GO
SELECT [name], [version], FORMAT([date], 'dd/MM/yyyy') AS Ann�e 
FROM [ide] 
WHERE [date] BETWEEN '2010/01/01' AND  '2011/12/31' 
ORDER BY [date];

## Avant de commencer, ex�cutez le fichier SQL : "ajout.sql"

## Exercice 1
Dans la table ***frameworks***, via une requ�te, afficher toutes les donn�es de la table ayant une version 2.x (x �tant un num�ro quelconque).

## Exercice 2
Dans la table ***frameworks***, via une requ�te, afficher toutes les lignes ayant pour id 1 et 3.

## Exercice 3
Dans la table ***ide***, via une requ�te, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
*/
