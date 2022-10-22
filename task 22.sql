use org;

create function  Multiply(@a int,@b int)
returns int
as
begin
	return @a * @b
end

--call the function
select dbo.Multiply(10,6) as Result

 


create procedure countEmployee(@countemp int output)
as
	begin
		select @countemp=count(*) from salesman;
	end;


DECLARE @c INT;
exec countEmployee @c output;
print @c


create trigger timings
on salesman  
FOR INSERT, UPDATE, DELETE
as
begin
	if DATEPART(HH,GETDATE())>18 or DATEPART(HH,GETDATE())<23
	BEGIN
	    print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
		print 'You cannot insert into the demo table between 6PM to 11PM'
		print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
		Rollback transaction 
	END
end

--drop trigger timings

update salesman set city='Tokyo' where city='ondon';
insert into salesman values(5008,'John','Berlin',0.12);
delete from salesman where salesman_id=5008;


/*
create trigger server_trg
on ALL Server
For Create_Table,Alter_Table,Drop_Table
as
Begin
	Print 'You cannot perform DDL on any Database'
	Rollback Transaction
End
*/

--drop trigger server_trg

create table student
(
id int
);
 

