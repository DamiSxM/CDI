create procedure FilterYear
@year int,
@country varchar(15)
as
begin
	SELECT [Country]
		  ,[annee]
		  ,[dbo].[Change]([CAnet],'USD',@country,null,null)
	  FROM [dbo].[PaysduClientPayeur]
	  where [Country] = @country
	  and [annee] = @year
end
