use pr;
select gender,avg(salary)over(partition by gender)
from emp e inner join empsa s 
on e.empid=s.empid;

select gender,salary,sum(salary)over(partition by gender order by e.empid) as RollingTotal
from emp e inner join empsa s                -- (ROLLING TOTAL)
on e.empid=s.empid;

select empname, gender,salary,
row_number()over(partition by gender order by salary) as RowNumber,
rank()over(partition by gender order by salary) as Ranking,
dense_rank()over(partition by gender order by salary) as DenseRank
from emp e inner join empsa s 
on e.empid=s.empid;
