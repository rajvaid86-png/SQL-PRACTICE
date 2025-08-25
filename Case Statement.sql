use pr;
select*  from emp;

SELECT empname,age,
case
when age > 28 THEN 'Old'
when age BETWEEN 23 AND 27 THEN 'Young'
else 'Baby'
end as age_category
from emp
where age IS NOT NULL
order by age;

SELECT emp.empname,
       empsa.dept,
       empsa.salary,
       CASE
         WHEN empsa.dept = 'sales' THEN empsa.salary + (empsa.salary * 0.10)
         WHEN empsa.dept = 'it'    THEN empsa.salary + (empsa.salary * 0.05)
         ELSE empsa.salary + (empsa.salary * 0.03)
       END AS TotalSalary
FROM emp
INNER JOIN empsa 
  ON emp.empid = empsa.empid;

  
  select * from empsa;
