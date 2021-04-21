CREATE DATABASE [ClgCorrection1]
GO

USE [ClgCorrection1]
GO

/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/
/*------------------------------------------------------------
-- Table: subject
------------------------------------------------------------*/
CREATE TABLE subject(
	id     INT IDENTITY (1,1) NOT NULL ,
	name   VARCHAR (50) NOT NULL  ,
	CONSTRAINT subject_PK PRIMARY KEY (id)
);
/*------------------------------------------------------------
-- Table: teacher
------------------------------------------------------------*/
CREATE TABLE teacher(
	id           INT IDENTITY (1,1) NOT NULL ,
	name         VARCHAR (50) NOT NULL ,
	firstname    VARCHAR (50) NOT NULL ,
	mail         VARCHAR (50) NOT NULL ,
	id_subject   INT  NOT NULL  ,
	CONSTRAINT teacher_PK PRIMARY KEY (id)

	,CONSTRAINT teacher_subject_FK FOREIGN KEY (id_subject) REFERENCES subject(id)
);
/*------------------------------------------------------------
-- Table: level
------------------------------------------------------------*/
CREATE TABLE level(
	id     INT IDENTITY (1,1) NOT NULL ,
	name   INT  NOT NULL  ,
	CONSTRAINT level_PK PRIMARY KEY (id)
);
/*------------------------------------------------------------
-- Table: class
------------------------------------------------------------*/
CREATE TABLE class(
	id           INT IDENTITY (1,1) NOT NULL ,
	name         VARCHAR (50) NOT NULL ,
	id_teacher   INT  NOT NULL ,
	id_level     INT  NOT NULL  ,
	CONSTRAINT class_PK PRIMARY KEY (id)

	,CONSTRAINT class_teacher_FK FOREIGN KEY (id_teacher) REFERENCES teacher(id)
	,CONSTRAINT class_level0_FK FOREIGN KEY (id_level) REFERENCES level(id)
);
/*------------------------------------------------------------
-- Table: student
------------------------------------------------------------*/
CREATE TABLE student(
	id              INT IDENTITY (1,1) NOT NULL ,
	name            VARCHAR (50) NOT NULL ,
	Firstname       VARCHAR (50) NOT NULL ,
	Date_of_birth   DATETIME NOT NULL ,
	id_class        INT  NOT NULL  ,
	CONSTRAINT student_PK PRIMARY KEY (id)

	,CONSTRAINT student_class_FK FOREIGN KEY (id_class) REFERENCES class(id)
);
/*------------------------------------------------------------
-- Table: grade
------------------------------------------------------------*/
CREATE TABLE grade(
	id              INT IDENTITY (1,1) NOT NULL ,
	student_grade   FLOAT  NOT NULL ,
	id_student      INT  NOT NULL ,
	id_subject      INT  NOT NULL  ,
	CONSTRAINT grade_PK PRIMARY KEY (id)

	,CONSTRAINT grade_student_FK FOREIGN KEY (id_student) REFERENCES student(id)
	,CONSTRAINT grade_subject0_FK FOREIGN KEY (id_subject) REFERENCES subject(id)
);

INSERT INTO [subject]
VALUES ('Maths'),
('Sport'),
('French'),
('English'),
('History'),
('Geography')
GO

INSERT INTO [level]
VALUES ('6'),('5'),('4'),('3')
GO

INSERT INTO [teacher]
VALUES ('Peter','Szlachter','peter@gmail.com',1),
('Geraldine','Laprof','gege@gmail.com',1),
('Jeannnine','Martin','jeje@gmail.com',2),
('Nelson','Lepont','nene@gmail.com',2),
('Richard','Babin','riri@gmail.com',3),
('Hubert','Curis','huhu@gmail.com',3),
('Alfonse','Picard','alal@gmail.com',4),
('Nicolas','Berger','nini@gmail.com',4),
('Pola','Paul','popo@gmail.com',5),
('Jose','Oliveria','jojo@gmail.com',5),
('Pauline','Airece','paupau@gmail.com',6),
('Isabelle','Poubelle','isaisa@gmail.com',6)
GO

INSERT INTO [class]
VALUES ('1',1,1),
('2',3,1),
('1',5,2),
('2',7,2),
('1',9,3),
('2',11,3),
('1',10,4),
('2',2,4)
GO

INSERT INTO [student]
VALUES('Hubert','Bonnisseur','12/03/2010',1),
('Dela','Bath', '17/09/2010',1),
('Vladimir','Poutine','19/10/2010',1),
('Zizou','Zizou','19/10/2010',1),
('Angela','Markelle', '27/01/2010',1),

('Jean','Porte','06/04/2010',2),
('Jean','Mene','06/04/2010',2),
('Jean','Fume','06/04/2010',2),
('Jeanne','Parte','04/02/2010',2),
('Jean','Pitre','23/08/2010',2),


('Randall','Bryan','24/11/09',3),
('Larissa','Montoya','09/05/09',3),
('Larissa','Sapique','09/05/09',3),
('Amanda','Vaughn','05/08/09',3),
('Mannon','Cradenon','05/08/09',3),

('Maggy','Chandler','31/07/08',4),
('Beatrice','Heath','08/08/08',4),
('Robert','Spierre','08/08/08',4),
('Malachi','Nelson','04/07/08',4),
('Jonas','Oconnor','06/11/08',4),


('Chadwick','Lester','24/06/07',5),
('Ivan','Gallagher','21/10/07',5),
('Nap','Oleon','21/10/07',5),
('Sasha','Pugh','17/07/07',5),
('Sasha','Bourgpalette','17/07/07',5),

('Elliott','Stanley','01/11/06',6),
('Jack','Daniel','01/11/06',6),
('Keefe','Wolfe','20/09/06',6),
('Hedley','Pope','14/12/06',6),
('Nyssa','Baxter','30/03/06',6),

('Signe','Mercado','03/08/06',7),
('Cooper','Roy','22/10/07',7),
('Briar','Copeland','23/08/07',7),
('Leonard','Duran','03/02/09',7),
('Ray','Mond','25/12/09',7),

('Jean-François','Alain','01/12/2010',8),
('Lebron','James','01/12/2010',8),
('Marie-Françoise','Bonjour','13/08/2010',8),
('Jolie','Langley','14/03/08',8),
('Picasso','Lartiste','05/03/2010',8)
GO

INSERT INTO [grade] ([student_grade],[id_student],[id_subject])
VALUES (2,1,6),(20,20,3),(3,28,3),(13,23,6),(15,31,5),(12,20,5),(6,20,1),(9,34,4),(15,24,5),(2,28,2),
(6,11,2),(14,33,2),(3,31,6),(16,23,6),(11,1,6),(16,19,4),(8,36,3),(17,19,3),(14,8,3),(14,22,4),
(19,20,1),(14,6,5),(15,9,2),(16,11,6),(19,36,1),(20,20,6),(9,20,6),(10,28,3),(11,9,3),(14,9,4),
(2,10,5),(13,39,5),(15,8,5),(4,40,3),(10,3,6),(4,2,5),(6,20,3),(19,19,5),(12,34,4),(9,28,2),
(5,11,5),(18,18,1),(7,35,5),(10,29,6),(12,16,2),(4,8,6),(16,19,4),(13,17,6),(7,34,4),(15,39,1),
(18,7,1),(6,37,6),(5,32,6),(19,33,4),(10,1,1),(3,17,5),(1,19,1),(1,27,5),(9,7,2),(2,10,1),
(3,27,2),(10,29,3),(17,17,5),(14,20,6),(10,29,3),(18,19,5),(15,40,2),(14,11,3),(5,13,2),(7,40,2),
(2,6,5),(18,5,6),(1,35,5),(18,16,5),(14,35,6),(3,8,3),(4,1,6),(6,26,1),(9,1,5),(9,16,3),
(15,10,3),(7,31,3),(16,14,6),(2,28,4),(8,5,2),(9,33,6),(15,1,5),(9,33,2),(2,21,3),(7,23,6),
(17,16,6),(10,5,6),(9,8,3),(18,40,4),(1,12,6),(16,23,4),(5,27,5),(2,8,3),(3,27,1),(20,35,4),
(20,10,5),(1,40,6),(13,26,6),(3,8,6),(15,33,6),(12,8,1),(15,36,2),(8,36,5),(2,33,6),(4,21,5),
(3,31,4),(18,7,6),(9,20,1),(19,17,4),(19,18,6),(1,23,3),(19,4,2),(7,28,6),(12,34,1),(6,5,6),
(11,20,1),(11,30,4),(18,30,1),(12,34,4),(14,25,5),(2,17,4),(20,40,2),(10,2,3),(6,23,1),(11,8,1),
(18,17,5),(10,33,6),(6,33,6),(5,40,4),(20,10,3),(8,32,2),(11,27,6),(12,32,5),(13,10,2),(6,2,3),
(2,1,5),(12,2,6),(4,1,6),(17,33,2),(9,33,3),(1,13,6),(3,3,4),(14,34,3),(16,21,5),(2,25,1),
(19,40,6),(10,33,2),(7,24,3),(18,5,3),(3,12,2),(10,16,6),(19,9,3),(9,18,5),(9,12,2),(15,26,4),
(1,5,1),(5,16,3),(16,39,4),(19,16,5),(14,16,4),(4,1,6),(17,7,5),(11,19,6),(15,37,3),(6,25,5),
(5,28,2),(7,31,4),(3,8,6),(13,35,2),(18,40,2),(2,27,3),(18,17,3),(11,3,2),(3,31,2),(5,14,3),
(18,20,2),(13,38,5),(13,24,4),(14,21,2),(1,28,4),(8,5,1),(17,27,3),(16,27,1),(4,4,4),(13,13,5),
(13,25,4), (14,38,2),(10,15,6),(17,15,3)
GO

INSERT INTO [grade] ([student_grade],[id_student],[id_subject]) VALUES (8,40,3),(5,40,1)
GO

SELECT
	st.[Firstname]
	,st.[name]
	,gr.[student_grade]
	,sb.[name]
--	,st.[id]
FROM
	[student] AS st
	INNER JOIN [grade] AS gr ON st.[id] = gr.[id_student]
	LEFT JOIN [subject] AS sb ON gr.[id_subject] = sb.[id]
ORDER BY
	st.[name], gr.[student_grade] ASC

SELECT
	st.[Firstname]
	,st.[name]
	,CONCAT(l.[name],'°', c.[name]) AS classname
	,CONCAT(tr.[firstname],' ', tr.[name]) AS 'main teacher'
	,AVG(gr.[student_grade]) AS moyenne
FROM
	[student] AS st
	INNER JOIN [grade] AS gr ON st.[id] = gr.[id_student]
	LEFT JOIN [class] AS c ON st.[id_class] = c.[id]
	LEFT JOIN [level] AS l ON c.[id_level] = l.[id]
	LEFT JOIN [teacher] AS tr ON c.[id_teacher] = tr.[id]
GROUP BY
	st.[name]
	,st.[Firstname]
	,l.[name]
	,c.[name]
	,tr.[name]
	,tr.[firstname]
ORDER BY
	l.[name]
	,c.[name]
	,AVG(gr.[student_grade]) DESC