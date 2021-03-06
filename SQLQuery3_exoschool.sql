USE [Lamanuschool]
GO

IF NOT EXISTS (SELECT * FROM ... WHERE ...)

/*Insert the students names on the database*/
INSERT INTO [dbo].[students] ([firstname],[lastname],[birthday],[id]) VALUES
('DUVERLIE', 'FRANCOISE', 2000-11-01, 1),
('LEMARCHAND', 'COLETTE', 2000-11-02, 1 ),
('ROCANCOURT', 'XAVIER', 2000-11-03, 1),
('BUISARD', 'GEORGES', 2000-11-04, 1),
('LAROSE', 'SOLANGE', 2000-11-05, 1),
('HOLLEY', 'JANINE', 2000-11-06, 2),
('RIVIERE', 'GERARD', 2000-11-07, 2),
('LEGRAND', 'JEAN LOUIS', 2000-11-08, 2),
('DUDOUET-MALASSIS','GISELE', 2000-11-09, 2),
('MORIN', 'GENEVIEVE', 2000-11-10,	 2),
('LE NOEL', 'GUY',2000-11-11, 3),
('LANGRAND', 'AUGUSTE', 2000-11-12, 3),
('ROBERT', 'PIERRE', 2000-11-13, 3),
('COISPEL', 'BERNARD', 2000-11-14, 3),
('LEBOSQUAIN', 'JEAN', 2000-11-15, 3),
('LEROY', 'NADINE', 2000-11-16, 4),
('LENORMAND', 'MICHEL', 2000-11-17, 4),
('LE COMTE', 'GERARD', 2000-11-18, 4),
('FERREIRA', 'JACK', 2000-11-19, 4),
('VALENTE', 'J GEORGES', 2000-11-20, 4),
('GAUTIER', 'YVETTE', 2000-11-21, 5),
('ROYER', 'JEAN', 2000-11-22, 5),
('LOPEZ', 'JEAN PIERRE',2000-11-23, 5),
('LETOUZEY', 'ANNETTE',2000-11-24, 5),
('LEVAVASSEUR', 'SOPHIE',2000-11-25, 5),
('LAIGNEL', 'ROGER', 2000-11-26, 6),
('MORAINE', 'HUGUETTE',2000-11-27, 6),
('ROSEN', 'BERNADETTE', 2000-11-28, 6),
('MARIE', 'GENEVIEVE', 2000-11-29, 6),
('MEUDIC', 'JANINE', 2000-11-30, 6),
('HEBERT', 'FRANCOISE', 2000-11-30, 7),
('FALISE', 'MARIE THERESE', 2000-12-01, 7),
('HEMERY', 'JEANNE', 2000-12-02, 7),
('HEUDE', 'CLAUDINE', 2000-12-03, 7),
('DAIGREMONT', 'CLAUDE', 2000-12-04, 7),
('LEFRANCOIS', 'FRANCOIS', 2000-12-05, 8),
('THETIOT', 'JEAN', 2000-12-06, 8),
('FREMONT', 'REMY', 2000-12-07, 8),
('BARRASSIN', 'DANIEL', 2000-12-08, 8),
('SERAFIN', 'MAURICE', 2000-12-09, 8);
GO
