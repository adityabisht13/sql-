-- lect 1 (create database,see the table(select statement),delete add coloumn (alter))--
-- (a)create table--

create table stu_data(
roll_num int,
stu_name varchar(255),
age float,
address varchar(255),
salary bigint

)

--(b) table koh dekhne kei liyei select statement use
-- * means all the coloumn and rows of table

select * from stu_data

select roll_num,age from stu_data --to show specific column from table--

--(c)alter table use for add column and delete column from table--

alter table stu_data
add email varchar(255) --isse stu_data table mei email column add hoh jyega--

--delete or remove coloumn from table--

alter table stu_data
drop address       --remove the column from table--

-- how to rename the column name--
alter table stu_data
rename email to stu_email     --17 version mei chl rha rename wese syntax nhi chlta--

--for typecasting of column use alter(note:type casting tbhi hogi jbh data na hoh agar hamei string koh convert krna pde int mei jbh data hoh toh possible nhi hei)
alter table stu_data
alter  salary  type varchar(255)  --big int se varchar kr dia using type casting 

--(imp)agr type cast varchar se int mei krna hoh using use krna pdega

alter table stu_data
alter salary type int using salary::in --yei bhi correct hei--

alter table stu_data
alter salary type int --yei bhi correct hei version 17 mei--







