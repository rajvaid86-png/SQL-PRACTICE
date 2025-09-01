use pr;
select length('skyfall');
select empname,length(empname)
from emp;

select empname,upper(empname)
from emp;

select empname,lower(empname)
from emp;

select trim('              helloo             ');
select ltrim('              helloo             ');
select rtrim('              helloo             ');

select empname,left(empname,4)
from emp;
select empname,right(empname,4)
from emp;

select empname,substring(empname,3,3)
from emp;

select empname, replace(empname,'a','e')
from emp;

select locate('x','alexander');

select empname,age,concat(empname,'-',age)
from emp;
