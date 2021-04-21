/*Use [Master]; 
GO 
CREATE DATABASE [framework]

CREATE DATABASE [students]
GO

DROP DATABASE [students],[languages] 

/* ## Exercice 1
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **languages** avec les colonnes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **language** (type **NVARCHAR**)*/

USE [webDevelopment]
IF NOT EXISTS (SELECT * FROM sysobjects where name = 'languages') 
BEGIN 
CREATE TABLE [languages]
(  
	[id] int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [language] NVARCHAR (50) 
)
END	

/*## Exercice 2
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **tools** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **tool** (type **NVARCHAR**)*/
USE [webDevelopment]
IF NOT EXISTS (SELECT * FROM sysobjects where name = 'tools') 
BEGIN 
CREATE TABLE [tools]
(  
	[id] int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [tool] NVARCHAR (50) 
)
END	

/*## Exercice 4
Dans la base de donn�es **webDevelopment**, via une requ�te, cr�er la table **libraries** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **library** (type **NVARCHAR**)
*/
USE [webDevelopment]
IF NOT EXISTS (SELECT * FROM sysobjects where name = 'libraries') 
BEGIN 
CREATE TABLE [libraries]
(  
	[id] int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [library] NVARCHAR (50) 
)
END	

## Exercice 5
Dans la base de donn�es **webDevelopment**, via l'interface graphique de SQL Server Management Studio, cr�er la table **ide** avec les colonnes suivantes :
- **id** (type **INT**, auto-incr�ment�, cl� primaire)
- **ideName** (type **NVARCHAR**)
USE [webDevelopment]
IF NOT EXISTS (SELECT * FROM sysobjects where name = 'ide') 
BEGIN 
CREATE TABLE [ide]
(  
	[id] int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [ideName] NVARCHAR (50) 
)
END	
## Exercice 7
Via une requ�te, supprimer la table **tools**.

## Exercice 8
Via une requ�te, supprimer la table **libraries**.
USE [webDevelopment] 
DROP TABLE [tools]
GO
USE [webDevelopment] 
DROP TABLE [libraries]
GO

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
*/

USE [codex]
IF NOT EXISTS (SELECT * FROM sysobjects where name = 'clients') 
BEGIN 
CREATE TABLE [clients]
(  
	[id] int NOT NULL IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [lastName] NVARCHAR (50), 
	[firstName] NVARCHAR (50), 
	[birthDate] DATE,
	[adress] NVARCHAR (50),
	[firstPhoneNumber] INT,
	[secondPhoneNumber] INT,
	[mail] NVARCHAR(50),
)
END 
GO