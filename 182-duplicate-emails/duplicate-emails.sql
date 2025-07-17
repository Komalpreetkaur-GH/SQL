# Write your MySQL query statement below
select email as Email from person where id in(select id from person group by email having count(email)>1);