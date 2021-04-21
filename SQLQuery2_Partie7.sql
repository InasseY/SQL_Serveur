/*# SQL - Partie 7 : Suppression et modification de donn�es

**Bien respecter les m�thodes demand�es � chaque exercice**
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
Dans la table ***languages***, via une requ�te, supprimer toutes les lignes parlant de **HTML**.

# Exercice 2
Dans la table ***frameworks***, via une requ�te, modifier toutes les lignes ayant le framework **Symfony** par **Symfony2**.

# Exercice 3
Dans la table ***languages***, via une requ�te, modifier la ligne du langage **JavaScript** version **5** par la version **5.1**.
*/