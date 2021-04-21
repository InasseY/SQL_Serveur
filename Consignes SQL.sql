# SQL - Cr�ation et suppression de bases de donn�es

**Bien respecter la m�thode demand�e � chaque exercice**

## Exercice 1
Via l'interface graphique de SQL Server Management Studio, cr�er une base de donn�es **languages** d'une taille de 10 Mo.

## Exercice 2
Via l'interface graphique de SQL Server Management Studio, cr�er une base de donn�es **webDevelopment** d'une taille de 5 Mo.

## Exercice 3

Via une requ�te, cr�er une base de donn�es **frameworks**.

## Exercice 4

Via une requ�te, cr�er une base de donn�es **students**.

## Exercice 5

Via l'interface graphique de SQL Server Management Studio, supprimer la base de donn�es **frameworks**.

## Exercice 6

Via une seule requ�te, supprimer les bases de donn�es **students** et **languages**.


# SQL - Partie 2 : Cr�ation de tables

**Attention : Toutes les commandes que vous taperez devront �tre conserv�es dans un fichier .sql**  
**Bien respecter les m�thodes demand�es � chaque exercice**

## AVANT de commencer, CREER la base de donn�es suivante : webDevelopment

## Exercice 1
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **languages** avec les colonnes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **language** (type **NVARCHAR**)

## Exercice 2
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **tools** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **tool** (type **NVARCHAR**)

## Exercice 3
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **frameworks** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **name** (type **NVARCHAR**)

## Exercice 4
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **libraries** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **library** (type **NVARCHAR**)

## Exercice 5
Dans la base de donn�es **webDevelopment**, via l'interface graphique de SQL Server Management Studio, cr�er la table **ide** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **ideName** (type **NVARCHAR**)

## Exercice 6
Dans la base de donn�es **webDevelopment**, via l'interface graphique de SQL Server Management Studio, cr�er la table **browsers** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **name** (type **NVARCHAR**)

## Exercice 7
Via une requ�te, supprimer la table **tools**.

## Exercice 8
Via une requ�te, supprimer la table **libraries**.

## Exercice 9
Via l'interface graphique de SQL Server Management Studio, supprimer la table **ide**.

## TP
Via l'interface graphique de SQL Server Management Studio, CREER la base de donn�es **codex**. Ensuite, y cr�er une table **clients** qui aura comme colonnes :

| Colonnes          | Type    | Attributs                     |
|-------------------|---------|-------------------------------|
| id                | INT     | Auto-incr�ment�, cl� primaire |
| lastname          | NVARCHAR | 50 |
| firstname         | NVARCHAR | 50 |
| birthDate         | DATE    ||
| address            | NVARCHAR | 50 |
| firstPhoneNumber  | INT     ||
| secondPhoneNumber | INT     ||
| mail              | NVARCHAR | 50 |


# SQL - Partie 3 : Modifications de tables

**Attention : Toutes les commandes que vous taperez devront �tre conserv�es dans un fichier .sql**  
**Bien respecter les m�thodes demand�es � chaque exercice**

## Exercice 1

Dans la base de donn�es **webDevelopment**, via une requ�te, ajouter � la table **languages** une colonne **versions** (**NVARCHAR**).

## Exercice 2

Dans la base de donn�es **webDevelopment**, via l'interface graphique de SQL Server Management Studio, ajouter � la table **frameworks** une colonne **version** (**INT**).

## Exercice 3

Dans la base de donn�es **webDevelopment**, dans la table **languages**, via une requ�te, renommer la colonne **versions** en **version**.

## Exercice 4
Dans la base de donn�es **webDevelopment**, dans la table **frameworks**, via l'interface graphique de SQL Server Management Studio, renommer la colonne **name** en **framework**.

## Exercice 5

Dans la base de donn�es **webDevelopment**, dans la table **frameworks** changer le type de la colonne **version** en **NVARCHAR** de taille 10.

## TP

Dans la base de donn�es **codex** pr�c�demment cr��, dans la table **clients** :
- supprimer la colonne **secondPhoneNumber** via une requ�te.
- renommer la colonne **firstPhoneNumber** en **phoneNumber** via une requ�te.
- changer le type de la colonne **phoneNumber** en **NVARCHAR** via une requ�te.
- ajouter les colonnes **zipCode**(**NVARCHAR**) et **city**(**NVARCHAR**) via une requ�te.
