# Write your MySQL query statement below
select a.customer_id, count(*) as count_no_trans from visits a left join transactions b using(visit_id) where b.transaction_id is null group by a.customer_id;

