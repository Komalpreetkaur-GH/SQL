-- select name as employee from employee e where salary>(select salary from employee where e.managerid=id);

select e1.name as Employee from employee e1 join employee e2 on e2.id=e1.managerid and e1.salary>e2.salary;