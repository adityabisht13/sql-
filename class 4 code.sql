
-- I 	want ot see few columns 
create table wind(
emp_id int ,
subject varchar(255),
salary  bigint
)
insert into wind
values(1,'da',10000),
(2,'da',50000.7844),
(3,'ai',30000.3822),
(4,'ma',80000.2830),
(5,'ai',70000.2930),
(6,'ma',20000.2394),
(7,'ai',90000.2943)
drop table wind

select * from wind
select count(*)  from wind -- for counting total rows
select count(*) as count_row  from wind  --as issliye lagaya hei jiis naam se show krna hei usskei liye


-- i want to find the higest salary --
select * from wind
order by salary 
limit  5

--agar desc mei krna hoh toh (asc default hota heu)
select * from wind
order by salary desc  --column name dena pdega jiis kei through order by krna hei
limit  5


--- find the second highest salary --

select * from wind
order by salary desc
offset 4                                --offset ki madad se utni upar ki row nhi dikhegi
limit 1                      -- agar 5th no ka nikalna hei toh offset mei ek kaam (4) kr denge

--count mei single cheez bhi count kr skhte aur distinct value bhi
select count(subject),count(distinct subject) from wind 


--- now use some alias (aggregate function)
select min(salary) as min_salary,
max(salary) as max_salary,
avg(salary) as avg_salary,
count(*) as total_count
from wind

--- round --
select avg(salary) as avg_sal,
round(avg(salary),0) as round_0,  --round off kr dega value koh decimal ht jyega(agar 0 na bhi likhu default yahi hota hei)
round(avg(salary),2) as round_2, -- round of krega upto 2 decimal
ceiling(avg(salary)) as ceiling_,    --ek value bda dega aur decimal ht jyega
floor(avg(salary)) as floor_         --floor value dega bina round of kei
from wind



---- where clause act as filter ---
-- logical operator in the where clause -
-- or , and , not , in , between , like , ilike ,some , all, any
-- > , < ,>=, <=, =

select * from wind
where salary > 10000 and salary <80000.2830   --donoh value true honi chaiye


-- or operator -
select * from wind
where salary >10000 or salary < 80000.2830  -- ek value bhi true hoga chlega




--- in operator ---
select * from wind                   
where salary in (10000,20000,50001) --particular joh salary chaiye


--- in operator in the text columns --
select * from wind 
where subject in ('da','ma')

select * from wind 
where subject not in ('da','ma') --not bhi kr skhte hei

---- USE EQAUL OPERATOR 
select * from wind               
where subject='da' OR subject='ma'  -- yei bhi use kr skhte pr in easy hei aur fast


--- NOT EQUAL -

select * from wind 
where subject !='da'


--not in ka sign hei <>
select * from wind 
where subject <>'da' --not in operator sign <>
 


--aggregate function all in for practice

select min(salary) as min_sal,max(salary) as max_salary,
sum(salary) as sum_sal,avg(salary) as avg_sal,
count(salary) as count_sal,count(distinct salary) as dis_count_sla,
round(avg(salary),0) as round_0,
round(avg(salary),2) as round_2,
ceiling(avg(salary)) as ceiling_sal,
floor(avg(salary)) as floor_sal
from wind









