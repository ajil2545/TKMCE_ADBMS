CREATE DATABASE DEPARTMENT;
USE DEPARTMENT;
CREATE TABLE EMPLOYEE(EMPNO VARCHAR(10) PRIMARY KEY NOT NULL, EMP_NAME VARCHAR(30) NOT NULL, DEPT VARCHAR(30) NOT NULL, SALARY BIGINT(20) NOT NULL, DOJ DATE NOT NULL, BRANCH VARCHAR(30) NOT NULL);
INSERT INTO EMPLOYEE VALUES("E101","Amit","Production", 45000 ,"2000-03-12","Bangalore");
INSERT INTO EMPLOYEE VALUES("E102","Amit","HR", 70000 ,"2002-07-03","Bangalore");
INSERT INTO EMPLOYEE VALUES("E103","sunita","Management", 120000 ,"2001-01-11","mysore");
INSERT INTO EMPLOYEE VALUES("E105","sunita","IT", 67000 ,"2001-08-01","mysore");
INSERT INTO EMPLOYEE VALUES("E106","mahesh","Civil", 145000 ,"2003-09-20","Mumbai");
SELECT * FROM EMPLOYEE;
SELECT EMPNO,SALARY FROM EMPLOYEE;
SELECT AVG(SALARY) FROM EMPLOYEE;
SELECT COUNT(EMPNO) FROM EMPLOYEE;
SELECT COUNT(DISTINCT EMP_NAME) FROM EMPLOYEE;
SELECT SUM(SALARY), EMP_NAME, COUNT(EMP_NAME) FROM EMPLOYEE GROUP BY EMP_NAME HAVING COUNT(EMP_NAME)>1;
SELECT SUM(SALARY) FROM EMPLOYEE WHERE SALARY>120000;
SELECT EMP_NAME FROM EMPLOYEE ORDER BY EMP_NAME DESC;
SELECT * FROM EMPLOYEE WHERE EMP_NAME="Amit" AND SALARY>50000;
