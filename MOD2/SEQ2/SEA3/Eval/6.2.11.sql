create function CalculVitesse
(
	@Distance decimal(6,3),
	@Temps time
)
returns decimal(18,3)
as
begin
	declare @heures int
	declare @minutes int
	declare @secondes int
	declare @result decimal(18,3)
	
	set @heures = DATEPART(hour, @Temps)
	set @minutes = DATEPART(minute, @Temps)
	set @secondes = DATEPART(second, @Temps)

	set @result =  @secondes + (@minutes * 60) + (@heures*3600)
	
	return @Distance / (@result / 3600)
end