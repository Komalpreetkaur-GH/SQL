# Write your MySQL query statement below
select d.name as Department,e.name as Employee,e.salary as Salary from employee e join department d on e.departmentid=d.id where e.salary in(select max(salary) from employee where departmentid=e.departmentid);




