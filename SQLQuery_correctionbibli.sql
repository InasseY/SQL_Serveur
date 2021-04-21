USE [bibliCorrection]

/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: authors
------------------------------------------------------------*/
CREATE TABLE authors(
	id          INT IDENTITY (1,1) NOT NULL ,
	firstName   VARCHAR (15) NOT NULL ,
	lastName    VARCHAR (15) NOT NULL  ,
	CONSTRAINT authors_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: gender
------------------------------------------------------------*/
CREATE TABLE gender(
	id           INT IDENTITY (1,1) NOT NULL ,
	genderType   VARCHAR (15) NOT NULL  ,
	CONSTRAINT gender_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: books
------------------------------------------------------------*/
CREATE TABLE books(
	id            INT IDENTITY (1,1) NOT NULL ,
	title         VARCHAR (150) NOT NULL ,
	numberPages   INT  NOT NULL ,
	id_authors    INT  NOT NULL ,
	id_gender     INT  NOT NULL  ,
	CONSTRAINT books_PK PRIMARY KEY (id)

	,CONSTRAINT books_authors_FK FOREIGN KEY (id_authors) REFERENCES authors(id)
	,CONSTRAINT books_gender0_FK FOREIGN KEY (id_gender) REFERENCES gender(id)
);


/*------------------------------------------------------------
-- Table: customers
------------------------------------------------------------*/
CREATE TABLE customers(
	id                  INT IDENTITY (1,1) NOT NULL ,
	firstName           VARCHAR (15) NOT NULL ,
	lastName            VARCHAR (15) NOT NULL ,
	birthday            DATE NOT NULL ,
	firstRegistration   DATE NOT NULL ,
	id_gender           INT  NOT NULL  ,
	CONSTRAINT customers_PK PRIMARY KEY (id)

	,CONSTRAINT customers_gender_FK FOREIGN KEY (id_gender) REFERENCES gender(id)
);


/*------------------------------------------------------------
-- Table: registre
------------------------------------------------------------*/
CREATE TABLE registre(
	id             INT IDENTITY (1,1) NOT NULL ,
	bookRelease    DATE NOT NULL ,
	returnBook     DATE  ,
	id_books       INT  NOT NULL ,
	id_customers   INT  NOT NULL  ,
	CONSTRAINT registre_PK PRIMARY KEY (id)

	,CONSTRAINT registre_books_FK FOREIGN KEY (id_books) REFERENCES books(id)
	,CONSTRAINT registre_customers0_FK FOREIGN KEY (id_customers) REFERENCES customers(id)
);

INSERT INTO [gender]
VALUES ('horror'),
('Scie-fi'),
('young-Adult'),
('thrillers')

INSERT INTO [customers]
VALUES('Hubert','Bonnisseur','12/03/2010','10/12/2020','1'),
('Dela','Bath', '17/09/2010','10/02/2020','2'),
('Vladimir','Poutine','19/10/2010','01/12/2020','1'),
('Zizou','Zizou','19/10/2010','20/03/2020','1'),
('Angela','Markelle', '27/01/2010','30/12/2020','2'),

('Jean','Porte','06/04/2010','10/12/2019','1'),
('Jean','Mene','06/04/2010','1/12/2019','1'),
('Jean','Fume','06/04/2010','10/2/2019','1'),
('Jeanne','Parte','04/02/2010','01/10/2019','2'),
('Jean','Pitre','23/08/2010','17/05/2019','1'),

('Randall','Bryan','24/11/09','10/12/2018','1'),
('Larissa','Montoya','09/05/09','24/07/2018','2'),
('Larissa','Sapique','09/05/09','21/05/2018','2'),
('Amanda','Vaughn','05/08/09','18/08/2018','2'),
('Mannon','Cradenon','05/08/09','10/03/2018','2'),

('Maggy','Chandler','31/07/08','10/12/2017','2'),
('Beatrice','Heath','08/08/08','10/2/2017','2'),
('Robert','Spierre','08/08/08','20/12/2017','1'),
('Malachi','Nelson','04/07/08','03/06/2017','2'),
('Jonas','Oconnor','06/11/08','07/04/2017','1'),

('Chadwick','Lester','24/06/07','10/12/2016','1'),
('Ivan','Gallagher','21/10/07','01/12/2016','1'),
('Nap','Oleon','21/10/07','05/08/2016','1'),
('Sasha','Pugh','17/07/07','09/09/2016','2'),
('Sasha','Bourgpalette','17/07/07','08/06/2016','2')

INSERT INTO [authors]
VALUES ('Paul','Schter'),
('Geraldine','Laprof'),
('Jeannnine','Martin'),
('Nelson','Lepont'),
('Richard','Babin'),
('Laia','Sun'),
('Ecrivain','Anonyme'),
('Nicolas','Berger'),
('Pola','Paul'),
('Jose','Oliveria'),
('Pauline','Airece'),
('Isabelle','Pou')

INSERT INTO [books] 
VALUES ('Neela',130,1,3),
('FreakWithBlackHair',150,1,1),
('CreatureWhoSmiles',150,2,1),
('TeachersFollowingMe',150,3,1),
('SnakesWithRottenSkin',150,4,1),
('PhantomsAndFish',150,5,1),
('FreaksAndTeachers',150,6,1),
('LostInMyCloset',150,7,1),
('CorruptionAtTheGraveyard',300,8,1),
('CorruptedInTheCaves',300,9,1),
('SweatingInTheElements',300,10,1),
('FishAtTheMuseum',300,11,1),
('CreatureInTheRiver',300,12,1),
('HorrorsInTheAttic',300,1,1),
('Children At The Tombs',300,2,1),
('Wolves And Cats',300,3,1),
('Owls And Children',300,4,1),
('Singing In The Field',300,5,1),
('Singing In The Library',300,6,1),
('Brave Until Hell',255,7,1),
('Helpless In My Demise',255,8,1),
('Wife Of Romance',255,9,1),
('Visitor With Blond Hair',255,10,1),
('Sweethearts Without Shame',255,11,3),
('Husbands Of My Dreams',255,12,3),
('Visitors And Butterflies',255,1,3),
('Men And Suitors',255,2,3),
('Scent In The Forest',255,3,3),
('Fortune Of The North',400,4,3),
('Aching For The Sea',400,5,3),
('Welcome To My Boyfriend',400,6,3),
('God In My Town',400,7,3),
('Cook Of The Evening',400,8,3),
('Women Of Devotion',400,9,3),
('Friends With White Hair',400,10,3),
('Boyfriends And Girls',400,11,3),
('Lovers And Lovers',400,12,3),
('Climax Of Eternity',400,1,3),
('Evening Of The Stars',400,2,3),
('Travel To My Friend',400,3,3),
('Avoiding My Man',400,4,3),
('Leader Of Mens Legacy',430,5,2),
('Pilot Of The Orbit',430,6,2),
('Girls Of Our Legacy',430,7,2),
('Doctors Of Space',430,8,2),
('Women And Rebels',430,9,2),
('Spies And Figures',430,10,2),
('Result Of Our Destiny',430,11,2),
('Death Of The New Order',430,12,2),
('Bored By The Depths',430,1,2),
('Hidden By Moon Rocks',430,2,2),
('Leader Of The Dead',430,3,2),
('Rebel Of Life',430,4,2),
('Enemies Of The Dead',430,5,2),
('Men On My Ship',430,6,2),
('Boys And Spies',430,7,2),
('Spies And Foreigners',430,8,2),
('Victory Of War',125,9,2),
('Death Of The Droids',125,10,2),
('Puzzle Of Time Travel',125,11,2),
('Hidden In My Journey',125,12,2),
('Truelove In The Night',125,1,4),
('Duke Of Joy',125,2,4),
('Queens Of The South',125,3,4),
('Husbands Without Shame',125,4,4),
('Servants And Darlings',125,5,4),
('Sweethearts And Dears',125,6,4),
('Completion Of Love',125,7,4),
('Rise At My Work',125,8,4),
('Aching For My Boyfriend',125,9,4)

INSERT INTO [registre]
VALUES ('12/11/2020',NULL,1,3),
('12/11/2020','10/05/2020',4,25),
('13/10/2020','21/10/2020',5,24),
('08/08/2020',NULL,6,23),
('14/04/2020','27/07/2020',7,22),
('27/08/2020','19/02/2020',62,21),
('18/12/2020','03/05/2020',63,20),
('13/02/2020', NULL,60,1),
('12/10/2020','02/05/2020',58,3),
('01/04/2020','15/04/2020',53,6),
('24/02/2019','18/12/2019',37,9),
('13/01/2019', NULL,36,10),
('22/08/2020','24/12/2020',35,11),
('14/08/2020',NULL,43,12),
('25/07/2020','02/05/2021',44,16),
('25/08/2020',NULL,45,18),
('11/08/2020','19/09/2021',26,2),
('16/07/2020',NULL,25,19),
('02/10/2020','08/12/2020',27,4),
('05/11/2021',NULL,28,5),
('26/04/2020','25/11/2021',30,7)

--Afficher les lignes du registre (titre, nom et prénom du client, date d'emprunt et de retour du livre).
SELECT 
	[title],[firstName],[lastName],[bookRelease],[returnBook]
FROM 
	[books]
	INNER JOIN [registre] ON [registre].[id_books] = [books].[id]
	LEFT JOIN [customers] ON [registre].[id_customers] = [customers].[id]

--Lister tous les livres (titre, genre, nom et prénom de l'auteur, disponibilité).
-- Lister tous les livres (titre, genre, nom et prénom de l'auteur, disponibilité).
IF OBJECT_ID('tempdb..#temporary_indisponibilities') IS NOT NULL DROP TABLE #temporary_indisponibilities
SELECT
    bo.[id]
INTO
    #temporary_indisponibilities
FROM 
    [books] AS bo
    INNER JOIN [register] AS re ON bo.[id] = re.[id_books]
WHERE
    re.[return_date] IS NULL 
ORDER BY
    bo.[id] ASC

SELECT 
    bo.[id]
    ,bo.[title]
    ,ty.[name] AS [type]
    ,au.[name] AS author_name
    ,au.[firstname] AS author_firstname
    ,CASE 
        WHEN bo.[id] = ti.[id] 
        THEN 'Indisponible' 
        ELSE 'Disponible' 
    END AS disponibilities
FROM [books] AS bo
    INNER JOIN [types] AS ty ON ty.[id] = bo.[id_types]
    INNER JOIN [authors] AS au ON au.[id] = bo.[id_authors]
    LEFT JOIN [#temporary_indisponibilities] AS ti ON bo.[id] = ti.[id]
ORDER BY
    disponibilities 
    DESC

--Afficher le nombre total de livres par genre (nom du genre, total de livres correspondants).
SELECT 
	[name]
	,COUNT([books].[id])
FROM 
	[gender]
	INNER JOIN [gender] ON [gender].[id] = [books].[id_gender]
GROUP BY
	[name]


--Afficher le nombre de livres empruntés par genre (trier du plus populaire au moins populaire)
SELECT 
	[name]
	,COUNT([books].[id])
FROM 
	[gender]
	INNER JOIN [gender] ON [gender].[id] = [books].[id_gender]
GROUP BY
	[name]

--Afficher les clients qui n’ont pas encore rendu des livres.
--Afficher tous les livres de la bibliothèque correspondant au genre préféré d’un client.