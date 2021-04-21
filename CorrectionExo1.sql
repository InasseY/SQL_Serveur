USE [college13]


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




