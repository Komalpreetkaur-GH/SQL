select a.employee_id,a.name,count(b.reports_to) as reports_count,round(avg(b.age),0) as average_age from employees a join employees b on  a.employee_id=b.reports_to group by a.employee_id order by employee_id;



-- select employee_id,name, count(reports_to) as reports_count, avg(age) as average_age from employees where employee_id in(select reports_to from employees);