
---- CREATE NEW TABLE ----

create table emp_stu(

emp_id int,
name varchar(255),
email varchar(255),
salary int,
age int

) 


select * from emp_stu


--- how to insert the data into the table --
--- how to make or add constraints into the table ---

---what is constarints ---
---primary KEY
0-- foriegn KEY
-- not NULL
-- UNIQUE
--- INDEX ,auto INCREMENT
-- check 
--- default 


--- how to insert the values in the table --

insert into emp_stu
values(1,'shahil','shahil@gmail.com',100000,24),
(2,'khushi','khushi@gmail.com',200000,23)


-- if you want to add data in specific columns --

insert into emp_stu(emp_id,salary,age)
values(1,20000,18)


-- add some constraints in the table before adding the data.

--- primary key : it contains only unique values and it does not contain any null VALUE
--- in a single table only one primary key is allowed 

-- for droping the table --
drop table emp_stu


-- add primary key into the existing table --

create table emp_stu(

emp_id int primary key,
name varchar(255),
email varchar(255),
salary int,
age int

) 

-- now add the notnull constraint into the name colums
create table emp_stu(

emp_id int primary key,
name varchar(255) not null,
email varchar(255),
salary int,
age int

)

-- now add the unique constraint into the age colums

-- unique: no duplicate value can be entered into the table -
-- it can contain the null values

create table emp_stu(

emp_id int primary key,
name varchar(255) not null,
email varchar(255),
salary int,
age int unique 

)


-- now add the default constraint into the age colums --
-- by default : 


create table emp_stu(

emp_id int primary key,
name varchar(255) not null,
email varchar(255) default 'nahi_pta@gmail.com,
salary int,
age int unique 

)

---now add the check constraint into the age colums --

create table emp_stu(

emp_id int primary key,
name varchar(255) not null,
email varchar(255) default 'nahi_pta@gmail.com,
salary int,
age int ,
check(age>=18 and age<=60)

)

---now add the auto increment  constraint into the age colums --

create table emp_stu(

emp_id  serial primary key  ,
name varchar(255) not null,
email varchar(255) default 'nahi_pta@gmail.com',
salary int,
age int ,
check(age>=18 and age<=60)

)

insert into emp_stu(name,salary,age)
values('gaurav',20000,18)

insert into emp_stu(name,salary,age)
values('aman',30000,19)

insert into emp_stu(name,salary,age)
values('ankit',10000,19)


insert into emp_stu(name,salary,age) --agar error aa jye insert mei fir insert krenge auto increment kei wajah se ek value bd jyegi error kei baad
values('ankit',10000,20)

select * from emp_stu;
drop table emp_stu ;
