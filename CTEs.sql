use pr;

-- (SIMPLE CTE)
with CTE_ex as 
(
select empid, salary
from empsa 
where salary>50000
)
select * 
from CTE_ex;

-- (ALIASING WITHOUT AS STATEMENT)
with cte_ex(Gender,AVG_SAL,MAX_SAL,MIN_SAL,COUNT_SAL) as
(
select gender,avg(salary),max(salary),min(salary),count(salary)
from emp e inner join empsa s on
e.empid=s.empid
Group by gender)
select * 
from cte_ex;


-- (CTE USING JOINS)
with cte_ex1 as
(
select empid,gender,age
from emp 
where age>21
),
cte_ex2 as
(
select empid,salary
from empsa
where salary>50000
)
select *
from cte_ex1 inner join cte_ex2
on cte_ex1.empid=cte_ex2.empid;