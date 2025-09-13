use pr;

create view ex1 as
select empid,salary
from empsa
where salary>60000;

select * from ex1;

CREATE VIEW example AS
SELECT e.empid, e.empname, s.salary
FROM emp e
INNER JOIN empsa s ON e.empid = s.empid
WHERE s.salary > 50000;

select * from example
order by salary;

