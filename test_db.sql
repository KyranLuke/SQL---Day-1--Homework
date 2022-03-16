--first ?. we will select all the records from the actor table
select * from actor 

-- ? 2 FIRST_NAME AND LAST IN THE ACTOR table 
select FIRST_NAME, LAST_NAME
from actor;

-- ? 3 A FIRST NAME USING NICK, LIKE OR =
select FIRST_NAME, LAST_NAME 
from actor 
where first_name like 'Nick';

-- ? 4 FOR ALL FIRST NAME DATA THAT STARTS WITH A J
select FIRST_NAME, actor_id
from actor 
where first_name like 'J%';

-- ? 5 FOR ALL FIRST_NAME DATA THAT STARTS WITH K AND HAS 2 LETTERS AFTER K 
select FIRST_NAME, ACTOR_ID
from actor 
where first_name like 'K__';

-- ? 6 FOR ALL FIRST_NAME DATA  THAT  STARTS WITH K AND ENDS WITH TH 
select FIRST_NAME, last_name, ACTOR_ID 
from actor 
where first_name like 'K__%th';

--comparing operator
-- explore data with select all change in new table 
select * from payment 

-- ? for data that shows customer who paid more than 2 dollars
select customer_id, amount
from payment p 
where  amount > 2.00;

-- ? for data that shows customer who paid less than 7.99
select customer_id , amount 
from payment p 
where amount < 7.99;

--? less than or equal to 
select customer_id , amount 
from payment p 
where amount <= 7.99

--? greater than or equal  
select customer_id, amount
from payment p 
where  amount >= 2.00;

-- not equal to 0
select customer_id ,amount 
from payment p 
where amount <> 0.00
order by amount desc;

-- SQL AGGREGATE FUNCTIONS! SUM AVG COUNT MIN MAX
--? TO DISPLAY THE SUM OF AMOUNTS PAID THAT ARE GREATER THAN 5.99
select SUM(amount)
from payment  
where amount > 5.99;

--? DISPLAY AVERAGE OF AMOUNT PAID GREATER  THAN 5.99
select AVG(amount)
from payment p 
where amount > 5.99;

--? TO DISPLAY COUNT OF AMOUNT 5.99
select COUNT(amount)
from payment p 
where amount > 5.99;

--? display count of distinct amounts paid greater than 5.99
select count(distinct amount)
from payment 
where amount > 5.99;

--? min greater than 7.99
select min(amount) as min_num_payments
from payment p 
where amount > 7.99;

--? max greater than 7.99
select max(amount) as max_num_payments
from payment p 
where amount > 7.99;

-- demo of groupby
select amount 
from payment p 
where amount = 7.99

-- display different amout group together
select amount, count(amount)
from payment p 
group by amount 
order by amount;

--? display customer id with sum amount 
select customer_id , sum(amount)
from payment p 
group by customer_id 
order by customer_id desc;


























