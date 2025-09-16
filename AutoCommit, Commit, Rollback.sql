use pr;

SET autocommit = 0;
 commit;
 
 update empsa set salary=salary-5000
 where empid=2;
 
 update empsa set salary=salary+5000
 where empid=3;
 
 
 SET autocommit = 0;
 commit;
 
 update empsa set salary=salary-5000
 where empid=2;
 
 update empsa set salary=salary+5000
 where empid=3;
 
 rollback;
 
 select * from empsa;