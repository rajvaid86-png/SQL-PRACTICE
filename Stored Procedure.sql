use pr;
                                          -- (SIMPLE PROCEDURE)
Delimiter \\
create procedure large_sal()
begin
      select * 
      from empsa 
      where salary>=50000;
	
end \\
delimiter ;

call large_sal();
                                             -- (CREATING PRODURE FROM SCHEMAS)
call new_procedure();       


											 -- (PROCEDURE WITH PARAMETER)                                      
 
 Delimiter \\
create procedure large_sal1(id int)
begin
      select salary 
      from empsa 
      where empid=id;
	
end \\
delimiter ;


call large_sal1(2);
