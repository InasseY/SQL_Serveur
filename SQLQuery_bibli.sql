USE [bibli]
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
-- Table: customers
------------------------------------------------------------*/
CREATE TABLE customers(
	id                  INT IDENTITY (1,1) NOT NULL ,
	firstName           VARCHAR (15) NOT NULL ,
	lastName            VARCHAR (15) NOT NULL ,
	birthday            DATETIME NOT NULL ,
	firstRegistration   DATETIME NOT NULL ,
	id_gender           INT  NOT NULL  ,
	CONSTRAINT customers_PK PRIMARY KEY (id)

	,CONSTRAINT customers_gender_FK FOREIGN KEY (id_gender) REFERENCES gender(id)
);


/*------------------------------------------------------------
-- Table: registre
------------------------------------------------------------*/
CREATE TABLE registre(
	id            INT IDENTITY (1,1) NOT NULL ,
	bookRelease   DATETIME NOT NULL ,
	returnBook    DATETIME NOT NULL  ,
	CONSTRAINT registre_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: books
------------------------------------------------------------*/
CREATE TABLE books(
	id             INT IDENTITY (1,1) NOT NULL ,
	title          VARCHAR (20) NOT NULL ,
	numberPages    INT  NOT NULL ,
	id_authors     INT  NOT NULL ,
	id_gender      INT  NOT NULL ,
	id_registre    INT  NOT NULL ,
	id_customers   INT  NOT NULL  ,
	CONSTRAINT books_PK PRIMARY KEY (id)

	,CONSTRAINT books_authors_FK FOREIGN KEY (id_authors) REFERENCES authors(id)
	,CONSTRAINT books_gender0_FK FOREIGN KEY (id_gender) REFERENCES gender(id)
	,CONSTRAINT books_registre1_FK FOREIGN KEY (id_registre) REFERENCES registre(id)
	,CONSTRAINT books_customers2_FK FOREIGN KEY (id_customers) REFERENCES customers(id)
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


INSERT INTO [registre]
VALUES ('12/11/2020','10/05/2020'),
('12/11/2020','10/05/2020'),
('13/10/2020','21/10/2020'),
('08/08/2020','12/09/2020'),
('14/04/2020','27/07/2020'),
('27/08/2020','19/02/2020'),
('18/12/2020','03/05/2020'),
('13/02/2020','07/09/2020'),
('12/10/2020','02/05/2020'),
('01/04/2020','15/04/2020'),
('24/02/2019','18/12/2019'),
('13/01/2019','14/11/2019'),
('22/08/2020','24/12/2020'),
('14/08/2020','23/03/2022'),
('25/07/2020','02/05/2021'),
('25/08/2020','04/08/2020'),
('11/08/2020','19/09/2021'),
('16/07/2020','04/09/2021'),
('02/10/2020','08/12/2020'),
('05/11/2021','04/04/2020'),
('26/04/2020','25/11/2021')



INSERT INTO [books] 
VALUES ('Neela',150,2,4,6,1),
('Freak',150,1,1,4,2),
('Creature',150,2,1,5,3),
('Teachers',150,3,1,6,4),
('Snakes',150,4,1,7,5),
('Phantoms',150,5,1,8,6),
('Freaks',150,6,1,9,7),
('Lost',150,7,1,10,8),
('Corruption',300,8,1,11,9),
('Corrupted',300,9,1,12,10),
('Sweating',300,10,1,13,11),
('Fish',300,11,1,14,12),
('Creature',300,12,1,15,13),
('Horrors',300,1,1,16,14),
('Children',300,2,1,17,15),
('Wolves',300,3,1,18,16),
('Owls',300,4,1,19,17),
('Singing',300,5,1,20,18),
('Singing',300,6,1,21,19),
('Brave',255,7,1,22,20),
('Helpless',255,8,1,23,21),
('Wife',255,9,1,24,22),
('Visitor',255,10,1,4,23),
('Sweethearts',255,11,3,4,24),
('Husbands',255,12,3,5,25),
('Visitors',255,1,3,6,1),
('Men',255,2,3,7,2),
('Scent',255,3,3,8,3),
('Fortune',400,4,3,9,4),
('Aching',400,5,3,10,5),
('Welcome',400,6,3,11,6),
('myTown',400,7,3,12,7),
('Cook',400,8,3,13,8),
('Women',400,9,3,14,9),
('Friends',400,10,3,15,10),
('Boyfriends',400,11,3,16,11),
('Lovers',400,12,3,17,12),
('Climax',400,1,3,18,13),
('Evening',400,2,3,19,14),
('Travel',400,3,3,20,15),
('Avoiding',400,4,3,21,16),
('Leader',430,5,2,4,17),
('Pilot',430,6,2,5,18),
('Girls',430,7,2,6,19),
('Doctors',430,8,2,7,20),
('Women',430,9,2,8,21),
('Spies',430,10,2,9,22),
('Result',430,11,2,10,23),
('Death',430,12,2,11,24),
('Bored',430,1,2,12,25),
('Hidden',430,2,2,13,1),
('Leader',430,3,2,14,2),
('Rebel',430,4,2,15,3),
('Enemies',430,5,2,16,4),
('Men',430,6,2,17,5),
('Boys$',430,7,2,18,6),
('Spies',430,8,2,19,7),
('Victory',125,9,2,20,8),
('Death',125,10,2,23,9),
('Puzzle',125,11,2,22,10),
('Hidden',125,12,2,21,11),
('Truelove',125,1,4,20,12),
('Duke',125,2,4,19,13),
('Queens',125,3,4,18,14),
('Husbands',125,4,4,17,15),
('Servants',125,5,4,16,16),
('Sweethearts',125,6,4,15,17),
('Completion',125,7,4,14,18),
('Rise',125,8,4,13,1),
('Aching',125,9,4,12,1)


