/*# SQL - Partie 7 : Suppression et modification de données

**Bien respecter les méthodes demandées à chaque exercice**
QL exo 7 :

DELETE FROM [languages]
WHERE [language] LIKE '%HTML%'
GO

SELECT * FROM [language]
GO

SELECT * FROM [frameworks]
GO

UPDATE [frameworks]
SET [framework] = 'Symfony2'
WHERE [framework] = 'Symfony'
GO

UPDATE [frameworks]
SET [framework] = REPLACE ('Symfony', 'Symfony', 'Symfony2')
WHERE [framework] = 'Symfony'
GO

UPDATE [languages]
SET [version] = '5.1'
WHERE [language] = 'JavaScript' AND [version] = '5'
GO


# Exercice 1
Dans la table ***languages***, via une requête, supprimer toutes les lignes parlant de **HTML**.

# Exercice 2
Dans la table ***frameworks***, via une requête, modifier toutes les lignes ayant le framework **Symfony** par **Symfony2**.

# Exercice 3
Dans la table ***languages***, via une requête, modifier la ligne du langage **JavaScript** version **5** par la version **5.1**.
*/