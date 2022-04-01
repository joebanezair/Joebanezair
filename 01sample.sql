create database DB_CompanyX;
use DB_CompanyX;
create table TBL_EMPLOYEE(
EMPLOYEE_NO BIGINT PRIMARY KEY NOT NULL,
FIRST_NAME varchar(50) NOT NULL,
LAST_NAME varchar(50) NOT NULL,
GENDER varchar(50) NOT NULL,
BIRTH_DATE date NOT NULL,
HIRE_DATE date NOT NULL
 );
 
 create table TBL_EMP_SALARY(
 EMPLOYEE_NO BIGINT,
 FOREIGN KEY (EMPLOYEE_NO) REFERENCES
TBL_EMPLOYEE(EMPLOYEE_NO),
 SALARY INT NOT NULL,
 FROM_DATE date NOT NULL,
 TO_DATE date NOT NULL
)

create table TBL_EMP_TITLE(
 EMPLOYEE_NO BIGINT,
 FOREIGN KEY (EMPLOYEE_NO) REFERENCES
TBL_EMPLOYEE(EMPLOYEE_NO),
 TITLE varchar(50) NOT NULL,
 FROM_DATE date NOT NULL,
 TO_DATE date NOT NULL
);

create table TBL_DEPARTMENTS(
 DEPARTMENT_NO CHAR(10) PRIMARY KEY NOT
NULL,
 DEPARTMENT_NAME VARCHAR(40) NOT NULL
);

create table TBL_DEPT_EMP( );
 EMPLOYEE_NO BIGINT,
 FOREIGN KEY (EMPLOYEE_NO) REFERENCES
TBL_EMPLOYEE(EMPLOYEE_NO),
 DEPARTMENT_NO CHAR(10),
 FOREIGN KEY (DEPARTMENT_NO)
REFERENCES
TBL_DEPARTMENTS(DEPARTMENT_NO),
 FROM_DATE date NOT NULL,
 TO_DATE date NOT NULL
);

create table
TBL_DEPARTMENT_MANAGER(
 DEPARTMENT_NO CHAR(10),
 FOREIGN KEY
(DEPARTMENT_NO)
REFERENCES
TBL_DEPARTMENTS(DEPARTME
NT_NO),
EMPLOYEE_NO BIGINT,
 FOREIGN KEY (EMPLOYEE_NO)
REFERENCES
TBL_EMPLOYEE(EMPLOYEE_NO)
,
FROM_DATE date NOT NULL,
 TO_DATE date NOT NULL);
 