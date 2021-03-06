DROP TABLE CARS;
DROP TABLE EMPLOYEE_MASTER;
DROP TABLE COMPANY_MASTER;

CREATE TABLE CARS(VIN BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1),NAME VARCHAR(30) NOT NULL,PRICE DECIMAL(10,2));

CREATE TABLE COMPANY_MASTER(ID BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),NAME VARCHAR(30) NOT NULL,CITY VARCHAR(20),STRENGTH INT);

CREATE TABLE EMPLOYEE_MASTER(ID BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1),NAME VARCHAR(30) NOT NULL,SALARY DECIMAL(10,2),DESIG VARCHAR(20),DEPT VARCHAR(20),EMAIL VARCHAR(40),PHONE VARCHAR(10),CID BIGINT,FOREIGN KEY(CID) REFERENCES COMPANY_MASTER(ID));

SHOW TABLES;