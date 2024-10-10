USE master
GO
if exists (select * from sys.databases where name='lab2')
		drop database lab2
GO

CREATE DATABASE lab2
GO

USE lab2
GO
CREATE TABLE Employee(
	id int PRIMARY KEY,
	name varchar(150) NOT NULL,
	dob date NOT NULL,
	gender bit NOT NULL
 )
GO
CREATE TABLE Employee_Skill(
	eid int NOT NULL,
	sid int NOT NULL,
 CONSTRAINT PK_Employee_Skill PRIMARY KEY CLUSTERED 
    (eid ASC, sid ASC)
 )
GO
CREATE TABLE Skill(
	id int PRIMARY KEY,
	name varchar(150) NOT NULL
 )
GO
CREATE TABLE Student(
	id int PRIMARY KEY,
	name varchar(150) NOT NULL,
	dob date NOT NULL,
	gender bit NOT NULL
 )
GO
CREATE TABLE Student_Skill(
	suid int NOT NULL,
	skid int NOT NULL,
 CONSTRAINT PK_Student_Skill PRIMARY KEY CLUSTERED 
  (suid, skid)
 )
GO
INSERT Employee (id, name, dob, gender) VALUES (1, 'Anna', '1976-04-03', 0)
INSERT Employee (id, name, dob, gender) VALUES (2, 'Michel', '1988-11-13', 1)
INSERT Employee (id, name, dob, gender) VALUES (3, 'Alex', '1985-07-06', 1)
INSERT Employee (id, name, dob, gender) VALUES (4, 'Kim', '1986-09-22', 0)
GO
INSERT Skill (id, name) VALUES (1, 'C#')
INSERT Skill (id, name) VALUES (2, 'Java')
INSERT Skill (id, name) VALUES (3, 'Database System')
INSERT Skill (id, name) VALUES (4, 'Algorithm')
GO
INSERT Student (id, name, dob, gender) VALUES (1, 'Anna', '1976-04-03', 0)
INSERT Student (id, name, dob, gender) VALUES (2, 'Michel', '1988-11-13', 1)
INSERT Student (id, name, dob, gender) VALUES (3, 'Alex', '1985-07-06', 1)
INSERT Student (id, name, dob, gender) VALUES (4, 'Kim', '1986-09-22', 0)
GO
ALTER TABLE Employee_Skill  WITH CHECK ADD  CONSTRAINT FK_Employee_Skill_Employee FOREIGN KEY(eid)
REFERENCES Employee (id)
GO
ALTER TABLE Employee_Skill CHECK CONSTRAINT FK_Employee_Skill_Employee
GO
ALTER TABLE Employee_Skill  WITH CHECK ADD  CONSTRAINT FK_Employee_Skill_Skill FOREIGN KEY(sid)
REFERENCES Skill (id)
GO
ALTER TABLE Employee_Skill CHECK CONSTRAINT FK_Employee_Skill_Skill
GO
ALTER TABLE Student_Skill  WITH CHECK ADD  CONSTRAINT FK_Student_Skill_Skill FOREIGN KEY(skid)
REFERENCES Skill (id)
GO
ALTER TABLE Student_Skill CHECK CONSTRAINT FK_Student_Skill_Skill
GO
ALTER TABLE Student_Skill  WITH CHECK ADD  CONSTRAINT FK_Student_Skill_Student FOREIGN KEY(suid)
REFERENCES Student (id)
GO
ALTER TABLE Student_Skill CHECK CONSTRAINT FK_Student_Skill_Student
GO
