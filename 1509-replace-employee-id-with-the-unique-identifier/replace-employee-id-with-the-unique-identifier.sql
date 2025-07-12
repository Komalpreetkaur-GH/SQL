# Write your MySQL query statement below
select b.unique_id as unique_id,a.name from employees a left join employeeUNI b  
using(id);
