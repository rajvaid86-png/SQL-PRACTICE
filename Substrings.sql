use pr;

select *
from emp
where empid in (select empid from empsa where dept='it');

SELECT e.empname, s.salary
FROM emp AS e
INNER JOIN empsa AS s 
    ON e.empid = s.empid
WHERE s.salary > (SELECT AVG(salary) FROM empsa);
