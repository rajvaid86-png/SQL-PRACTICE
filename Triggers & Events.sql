use pr;

delimiter //
create trigger emp_insert
	after insert on empsa
    for each row
begin
	insert into emp(empid)
	values(new.empid);

end //

delimiter ;

insert into empsa(empid,dept,salary)values(15,'it',50000);
select * from emp;


insert into emp(empname,age,gender)values('pawan',62,'male');





SET GLOBAL event_scheduler = ON;

delimiter \\
create event dltrec
on schedule every 30 second
do
begin
	delete
	from emp
	where age>=60;

end \\
delimiter ;
