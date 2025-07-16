CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
declare x int;
set x=n-1;
  RETURN (
      # Write your MySQL query statement below.
      select distinct salary as getNthhighestsalary from employee order by salary desc limit 1 offset x

  );
END