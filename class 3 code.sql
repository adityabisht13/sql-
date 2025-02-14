
-- Drop : drop command drop the entire table from the data base ( it delete the whole table structure and enties)



create table emp_stu(

emp_id int,
name varchar(255),
email varchar(255),
salary int,
age int

) 

insert into emp_stu
values(1,'kunal','kunal@gmail.com',20000,20),
(2,'gaurav','gaurav@gmail.com',30000,20),
(3,'aman','aman@gmail.com',40000,20),
(4,'ankit','ankit@gmail.com',50000,20)

select * from emp_stu

drop table emp_stu

--delete : delete command use for delete the rows from the table 
--: in the delete command we can use the where clause 

delete from emp_stu --isse krenge toh sarri row delete
where name='aman';

--TRUNCATE: its delete the rows from the table
--in the truncate command we can't use the where clause
truncate table emp_stu;  -- sarri row delete



--update : we can change the rows/enries by using the update command and in the update command we can aso use the where condition
--command of update
--(syntax)
--update  table_name
--set condtion 
--where condition 

              
update emp_stu                       --joh update hoga last mei aa jyega
set salary=70000,name ='manish'      -- agar sirf yei condition chalyenge toh sbh ki salary update hoh jyegi isliye where clause use krte hei
where name='aman'



-- union and union all --
--union : in the union command only distinct ( unique) entries are enterd 

--union all : contain all rows ( duplicate rows/values also present )


--for both union and union all the number of columns are same in both the tables  and data type is also same for all the column in both the tables (if we particular select column ):


create table emp_stu1(

emp_id int,
name varchar(255),
email varchar(255),
salary int,
age int

) 

insert into emp_stu1
values(1,'kunal','kunal@gmail.com',20000,20),
(2,'karan','gaurav@gmail.com',30000,20),
(3,'vivek','vivek@gmail.com',40000,20),
(4,'ankit','ankit@gmail.com',50000,20)


create table emp_stu2(

emp_id int,
name varchar(255),
email varchar(255),
salary int,
age int

) 

insert into emp_stu2
values(1,'Kunal','kunal@gmail.com',20000,20),
(2,'gaurav','gaurav@gmail.com',30000,20),
(3,'Aman','aman@gmail.com',40000,20),
(4,'ankit','ankit@gmail.com',50000,20)

select * from emp_stu;
select * from emp_stu1;
select * from emp_stu2;

select * from emp_stu
union
select * from emp_stu2   --aman or Aman aayga kyoki case sensitive hei column or row nhi hei case sensitive

select * from emp_stu
union all
select * from emp_stu2 


select * from emp_stu  --joh phele hoga uska column name show honge select mei
union all
select * from emp_stu2    -- union  mei bhi teenoh koh kr skhte hei aur bhi jaada table add
union all
select * from emp_stu1 

select name , email from emp_stu
union                              -- specific column ka union bhi kr skhte 
select name , email from emp_stu2   --2 points yaad rakhnei hei main
                                    --(a)column same hone chaiye donoh ka jinka union krana hei
									--(b) data type same hona chaiye mtlb ki phela character hei aur dusra int toh dusri table mei
									--bhi same hona chaiye warna syntax error

select name , age from emp_stu    -- jesei ismei error aayga data type ka
union                              
select age, name from emp_stu2  

-- ismei hum temporary database mei store kr skhte new union table koh
create temporary table new10 as(
select * from emp_stu
union
select * from emp_stu2 )

select * from new10       
where name ilike '%kunal'  --ismei donoh value show krega joh case sensitive hei both like kunal or Kunal

select * from new10
where name like '%kunal'  --isme case sensitive value nhi dega only give kunal



---how to add the data from the local machine  by using the command---

create table ent(

loan_id varchar(255),
   	business_type varchar(255),
	business_activity varchar(255),
	business_sector varchar(255),
	enterprise_id varchar(255)

)


select * from ent

 -- syntax kei help se hum excel ki csv koh copy kr skhte uska data usmei joh value insert hei pr database same bna hona chaiye phele
copy ent from 'E:\ent.csv' delimiter ',' csv header







