create table  emp_data(
stu_name varchar(255),
roll_no int,
department_id varchar(255),
emp_dat varchar(255),
salary bigint

)

insert into emp_data
values('aman',01,'cs','intern',600000),
('ankit',02,'cs','intern',700000),
('rohan',04,'ai','fresher',800000),
('kartik',03,'da','fresher',900000)




select distinct department_id from emp_data

--- group by ---
select department_id,emp_dat,count(department_id) from  emp_data
group by department_id,emp_dat





--- count the distinct department id
select department_id,emp_dat,count(distinct department_id) from  emp_data
group by department_id,emp_dat


select * from  emp_data


--- find the total salary by each department
select department_id,count(department_id),sum(salary),avg(salary)
from emp_data
where sum(salary)>100000
group by department_id

-- having sum(salary)>10000000 -- ERROR:  aggregate functions are not allowed in WHERE

select department_id,count(department_id),sum(salary),avg(salary)
from emp_data
group by department_id
having sum(salary)>10000

---- agg function allowed in having clause.


select department_id,emp-dat,count(department_id),sum(salary),avg(salary)
from emp_data
group by 1,2  -- 1 is for department_id and 2 for emp_dat(1 ki jgah department_id or 2 ki jagah emp_dat bhi likh skhte the same aayga output)








select department_id,sum(salary) from emp_data
group by 1



---between ( date range)
select * from emp_data
where salary between 1000 and 2400000



-----from 
----- join 
-----where
----- group by 
----- having 
----- select
---- order by 
----- limit , offset

select department_id,sum(salary) from emp_data
where salary between 10000 and 2400000
group by department_id
having sum(salary)>150000
order by sum(salary) desc
limit 1 offset 1
