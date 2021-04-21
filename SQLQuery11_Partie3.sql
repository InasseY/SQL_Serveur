/* PARTIE 3
## Exercice 1

Dans la base de données **webDevelopment**, via une requête, ajouter à la table **languages** une colonne **versions** (**NVARCHAR**).

USE [webDevelopment]
ALTER TABLE dbo.languages ADD versions VARCHAR(20) NULL;

## Exercice 3

Dans la base de données **webDevelopment**, dans la table **languages**, via une requête, renommer la colonne **versions** en **version**.

USE [webDevelopment]
EXEC sp_rename 'languages.versions', 'version', 'COLUMN';

## Exercice 5

Dans la base de données **webDevelopment**, dans la table **frameworks** changer le type de la colonne **version** en **NVARCHAR** de taille 10.

USE [webDevelopment]
ALTER TABLE  dbo.framework ALTER COLUMN [version] NVARCHAR(10);
GO

## TP

CREATE DATABASE [codex3]
GO

USE [codex3]

CREATE TABLE [clients](
[id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[lastname] NVARCHAR(50),
[firstname] NVARCHAR(50),
[birthDate] DATE,
[address] NVARCHAR(50),
[firstPhoneNumber] INT,
[secondPhoneNumber] INT,
[mail] NVARCHAR(50)
)
GO

Dans la base de données **codex** précédemment créé, dans la table **clients** :
- supprimer la colonne **secondPhoneNumber** via une requête.
- renommer la colonne **firstPhoneNumber** en **phoneNumber** via une requête.
- changer le type de la colonne **phoneNumber** en **NVARCHAR** via une requête.
- ajouter les colonnes **zipCode**(**NVARCHAR**) et **city**(**NVARCHAR**) via une requête.

*/

USE [codex3]
ALTER TABLE dbo.clients DROP COLUMN secondPhoneNumber;
EXEC sp_rename 'clients.firstPhoneNumber', 'phoneNumber', 'COLUMN';
ALTER TABLE dbo.clients ALTER COLUMN [phoneNumber] NVARCHAR;
ALTER TABLE dbo.clients ADD zipCode NVARCHAR, city NVARCHAR ;