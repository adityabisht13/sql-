
---how to add the data from the local machine  by using the command---

create table ent(

loan_id varchar(255),
   	business_type varchar(255),
	business_activity varchar(255),
	business_sector varchar(255),
	enterprise_id varchar(255)

)


select * from ent


copy ent from 'D:\ent.csv' delimiter ',' csv header




-- LIKE AND ILIKE --

--- find the words from the strat
-- find the word from the last
-- find the word in any position 
-- find the word in any specific position like : second pos, third pos from the start or from the last


-- find the business sector whose first letter start with E
-- 'LETTER%  isse start ka dhundega'
select * from ent
WHERE business_sector like 'E%' -- case sensitive --

-- find the business sector whose LAST letter end  with s
select * from ent
WHERE business_sector like '%s' -- case sensitive --

select * from ent
WHERE business_sector like '%S'

--- USE ILIKE (WILDCARD)--

select * from ent
WHERE business_sector Ilike '%S'  --not case sensitive (capital hoh ya small farak nhi pdhta)


select * from ent
WHERE business_sector Ilike 'e%'


select business_type , business_activity , business_sector from ent
where business_sector  ilike 'm%'


-- find the name whose second alphabet is 'a' from the start

select * from ent
WHERE business_sector Ilike '__a%'  --(3rd no mei a jaha  hoga start se woh dundega)

-- find the name whose second alphabet is 'a' from the last

select * from ent
WHERE business_sector Ilike '%a__'       --(3rd no mei a jaha  hoga last se woh dundega)


-- find the word which contain & in any position 

select * from ent  --(most used for finding)
where business_sector ilike '%&%'   -- iskei beech mei rakhne se jaha bhi yei word hoga dhund kei de dega

--(above all the method for find or extract data from database)

update ent
set business_activity= '%' 
where loan_id :: int = 15520  --type casting krni pdegi int krna hei var koh

select * from ent
WHERE business_activity Ilike '%\%%'   --\ isse woh escape maar deta takki woh same na manne teenoh koh


---- vowels --

select * from ent
WHERE business_sector ilike any (array['%a%','%e%','%i%']) --any use krna pdhta hei array kei record koh filter krne kei liye



--- left and right--

select * from ent --(column ka left side ka letter)
WHERE left(business_sector,1) in ('A')  --1 ka mtlb 1 letter hona chaiye


-- FIND THE NAME WHOSE SATRTIN LETTER IS VOWELS 
select * from ent
WHERE left(business_sector,2) IN ('Ag','E','I','O','U') -- 2 ka mtlb 2 letter hone chaiye


-- END WITH VOWELS --
select * from ent          ----(column ka right side ka letter)
WHERE upper(RIGHT(business_sector,1)) IN ('A','E','I','O','U') 




-- start and end with vowels --
select * from ent
WHERE left(business_sector,1) IN ('A','E','I','O','U') and  --and se donoh true or se sarre aa jyenge koi bhi true hoh
upper(RIGHT(business_sector,1)) IN ('A','E','I','O','U')

