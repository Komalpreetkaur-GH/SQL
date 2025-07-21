# Write your MySQL query statement below
-- select  if(income<20000,'Low Salary',if((income>=20000 and income<=50000),'Average Salary','High Salary')) as category, count(account_id) as accounts_count from accounts group by if(income<20000,'Low Salary',if((income>=20000 and income<=50000),'Average Salary','High Salary'));



SELECT c.category,
       COUNT(a.account_id) AS accounts_count
FROM (
    SELECT account_id,
           CASE 
               WHEN income < 20000 THEN 'Low Salary'
               WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
               WHEN income > 50000 THEN 'High Salary'
           END AS category
    FROM Accounts
) a
RIGHT JOIN (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
) c ON a.category = c.category
GROUP BY c.category;
