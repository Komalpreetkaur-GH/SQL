# Write your MySQL query statement below
select b.contest_id,round(count(b.user_id)*100.0/(select count(*) from users),2) as percentage from users a join 
register b on a.user_id=b.user_id group by b.contest_id order by percentage desc, contest_id  ;