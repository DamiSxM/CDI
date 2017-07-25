create procedure Tracker
@CodeOperation nvarchar(250),
@LibelleOperation nvarchar(50)
as
begin
	insert into HistoResultats
	values (User_Name(), GETDATE(), @CodeOperation, @LibelleOperation) 
end