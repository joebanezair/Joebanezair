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
 Skill_id int not null references Skills(Skill_id),
 dept_id int not null references Department(dept_id) 
);

select * from Department;
