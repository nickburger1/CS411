DROP DATABASE workplace;
CREATE DATABASE workplace;
USE workplace;

CREATE TABLE employee
(
id					INT 			PRIMARY KEY 	AUTO_INCREMENT,
employee_name		VARCHAR(50)		NOT NULL,
superid				INT,
salary				INT,
bdate				DATE			NOT NULL,
dno					INT 			NOT NULL,
CONSTRAINT dep_num
	FOREIGN KEY (dno)
    REFERENCES department (dnumber)
);

CREATE TABLE department
(
dnumber		INT 			PRIMARY KEY 		AUTO_INCREMENT,
dname		VARCHAR(50)		NOT NULL
);

CREATE TABLE deptsal
(
dnumber		INT 		PRIMARY KEY,
totalsalary 	INT		NOT NULL,
CONSTRAINT dep_num
	FOREIGN KEY (dnumber)
	REFERENCES department (dno)
);

INSERT INTO employee VALUES
	(1,'john',3,100000,'1960-01-01',1),
	(2,'mary',3,50000,'1964-12-01',3),
	(3,'bob',NULL,80000,'1974-02-07',3),
	(4,'tim',1,50000,'1978-01-20',2),
	(5,'bill',NULL,NULL,'1985-01-20',1),
    (6,'nick',1,50000,'2000-01-06',4),
    (7,'avishek',1,50000,'1978-01-20',4);
    
INSERT INTO department VALUES
	(1,'Payroll'),
    (2,'TechSupport'),
    (3,'Research'),
    (4,'HumanResource');
    
INSERT INTO deptsal VALUES
	(1,0),
    (2,0),
    (3,0),
    (4,0);
    
