use pr;

select e.empname,e.age,e.gender,s.dept,s.salary,
count(gender) over (partition by gender) as Total_Gender
from emp as e inner join empsa as s
on e.empid=s.empid;