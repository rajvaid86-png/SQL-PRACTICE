use pr;

select * from empsa 
where salary between 40000 and 60000;


select * from empsa
where dept in ('sales','it');


select * from emp
where empname like 'a%';

select * from emp
where empname like '_a%';


select * from emp
where age is null;

select * from emp e
where exists(select 1 from empsa s where e.empid=s.empid);



select * from emp
where salary > ANY (select salary from empsa where dept='hr');

select * from emp
where salary > ALL (select salary from empsa where dept='hr');


