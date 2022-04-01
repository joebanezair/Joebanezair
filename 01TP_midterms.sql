use DB_CompanyX;

create table Skills(
 Skill_id int primary key not null,
 Skill_name varchar(50) not null,
 Skill_type varchar(50) not null,
 Description varchar(50) not null
);

create table Department(
dept_id int primary key not null,
dept_name varchar(50) not null,
dept_head_id int not null,
dept_location varchar(50) not null
);

create table Employee(
 emp_id int primary key not null,
 empt_lastname varchar(50) not null,
 emp_firstname varchar(50) not null, 
 dept_id int not null references Department(dept_id), 
 Skill_id int not null references Skills(Skill_id)
);

insert into 
Skills( Skill_id, Skill_name, Skill_type, Description) values
(10,'Programming','Technical','Computer');
/*
VALUES 
20,'Bookkeeping','Administrative','Accounting', 
30,'Marketing','Administrative','Sales',
40,'Troubleshooting','Technical','Computer',
10,'Programming','Technical','Computer'*/

insert into Department(dept_id, dept_name, dept_head_id, dept_location) values (500,'HRD',501,'2ND FLOOR');
/*
VALUES
100,'R&D',101,'3RD FLOOR'
200,'SALES',201,'4TH FLOOR'
300,'FINANCE',301,'3RD FLOOR'
400,'MARKETING',401,'2ND FLOOR'
500,'HRD',501,'2ND FLOOR'
*/

insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (110,'TORRES','TANZY',100,20);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (220,'ALIX','ABBY',200,10);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (230,'TANYAG','BENZ',200,20);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (309,'WEBER','JASON',300,30 );
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (380,'CROSS','KRISS',300,30);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (450,'LEANO','JHUN',400,40);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (499,'CHENG','REGIE',400,40);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (525,'TERRY','AUNOR',500,20);
insert into Employee(emp_id, empt_lastname, emp_firstname,  dept_id, Skill_id) values (530,'JANE','FRANCIS',500,30);
/*
VALUES 
102,'CHIN','PHILIP',100,10 
110,'TORRES','TANZY',100,20 */



drop table Employee;

select * from Skills;
select * from Department;
select * from Employee;




 

