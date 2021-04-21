/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: classroom
------------------------------------------------------------*/
CREATE TABLE classroom(
	id      INT IDENTITY (1,1) NOT NULL ,
	name    TEXT  NOT NULL ,
	level   INT  NOT NULL  ,
	CONSTRAINT classroom_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: students
------------------------------------------------------------*/
CREATE TABLE students(
	id             INT IDENTITY (1,1) NOT NULL ,
	firstname      TEXT  NOT NULL ,
	lastname       TEXT  NOT NULL ,
	birthday       DATETIME NOT NULL ,
	id_classroom   INT    ,
	CONSTRAINT students_PK PRIMARY KEY (id)

	,CONSTRAINT students_classroom_FK FOREIGN KEY (id_classroom) REFERENCES classroom(id)
);


/*------------------------------------------------------------
-- Table: score
------------------------------------------------------------*/
CREATE TABLE score(
	id              INT IDENTITY (1,1) NOT NULL ,
	scoreStudents   INT  NOT NULL  ,
	CONSTRAINT score_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: teachers
------------------------------------------------------------*/
CREATE TABLE teachers(
	id          INT IDENTITY (1,1) NOT NULL ,
	firstname   TEXT  NOT NULL ,
	lastname    TEXT  NOT NULL ,
	email       TEXT  NOT NULL  ,
	CONSTRAINT teachers_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: subject
------------------------------------------------------------*/
CREATE TABLE subject(
	id            INT IDENTITY (1,1) NOT NULL ,
	name          TEXT  NOT NULL ,
	id_students   INT    ,
	CONSTRAINT subject_PK PRIMARY KEY (id)

	,CONSTRAINT subject_students_FK FOREIGN KEY (id_students) REFERENCES students(id)
);


/*------------------------------------------------------------
-- Table: have
------------------------------------------------------------*/
CREATE TABLE have(
	id            INT  NOT NULL ,
	id_students   INT  NOT NULL  ,
	CONSTRAINT have_PK PRIMARY KEY (id,id_students)

	,CONSTRAINT have_score_FK FOREIGN KEY (id) REFERENCES score(id)
	,CONSTRAINT have_students0_FK FOREIGN KEY (id_students) REFERENCES students(id)
);


/*------------------------------------------------------------
-- Table: get
------------------------------------------------------------*/
CREATE TABLE get(
	id             INT  NOT NULL ,
	id_classroom   INT  NOT NULL  ,
	CONSTRAINT get_PK PRIMARY KEY (id,id_classroom)

	,CONSTRAINT get_teachers_FK FOREIGN KEY (id) REFERENCES teachers(id)
	,CONSTRAINT get_classroom0_FK FOREIGN KEY (id_classroom) REFERENCES classroom(id)
);


/*------------------------------------------------------------
-- Table: own
------------------------------------------------------------*/
CREATE TABLE own(
	id            INT  NOT NULL ,
	id_students   INT  NOT NULL  ,
	CONSTRAINT own_PK PRIMARY KEY (id,id_students)

	,CONSTRAINT own_teachers_FK FOREIGN KEY (id) REFERENCES teachers(id)
	,CONSTRAINT own_students0_FK FOREIGN KEY (id_students) REFERENCES students(id)
);


/*------------------------------------------------------------
-- Table: be
------------------------------------------------------------*/
CREATE TABLE be(
	id         INT  NOT NULL ,
	id_score   INT  NOT NULL  ,
	CONSTRAINT be_PK PRIMARY KEY (id,id_score)

	,CONSTRAINT be_subject_FK FOREIGN KEY (id) REFERENCES subject(id)
	,CONSTRAINT be_score0_FK FOREIGN KEY (id_score) REFERENCES score(id)
);


/*------------------------------------------------------------
-- Table: create
------------------------------------------------------------*/
CREATE TABLE [create](
	id            INT  NOT NULL ,
	id_teachers   INT  NOT NULL  ,
	CONSTRAINT create_PK PRIMARY KEY (id,id_teachers)

	,CONSTRAINT create_subject_FK FOREIGN KEY (id) REFERENCES subject(id)
	,CONSTRAINT create_teachers0_FK FOREIGN KEY (id_teachers) REFERENCES teachers(id)
);


/*------------------------------------------------------------
-- Table: give
------------------------------------------------------------*/
CREATE TABLE give(
	id             INT  NOT NULL ,
	id_classroom   INT  NOT NULL  ,
	CONSTRAINT give_PK PRIMARY KEY (id,id_classroom)

	,CONSTRAINT give_subject_FK FOREIGN KEY (id) REFERENCES subject(id)
	,CONSTRAINT give_classroom0_FK FOREIGN KEY (id_classroom) REFERENCES classroom(id)
);


/*------------------------------------------------------------
-- Table: hold
------------------------------------------------------------*/
CREATE TABLE hold(
	id             INT  NOT NULL ,
	id_classroom   INT  NOT NULL  ,
	CONSTRAINT hold_PK PRIMARY KEY (id,id_classroom)

	,CONSTRAINT hold_score_FK FOREIGN KEY (id) REFERENCES score(id)
	,CONSTRAINT hold_classroom0_FK FOREIGN KEY (id_classroom) REFERENCES classroom(id)
);



