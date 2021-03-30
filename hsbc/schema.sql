DROP TABLE EMPLOYEE_MASTER;

CREATE TABLE EMPLOYEE_MASTER(ID BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1),NAME VARCHAR(30) NOT NULL,SALARY DECIMAL(10,2),DESIG VARCHAR(20),DEPT VARCHAR(20),EMAIL VARCHAR(40),PHONE VARCHAR(10));

SHOW TABLES;