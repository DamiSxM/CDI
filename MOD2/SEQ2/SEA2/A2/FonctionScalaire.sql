create function [dbo].[Change]
(
	@Valeur decimal(18,5),
	@DeviseRef char(3)='USD',	-- cas1		-- cas2
	@Pays nvarchar(155)=null,						-- cas2
	@DeviseTar char(3)=null,	-- cas1
	@Date datetime=null
)
returns decimal(18,3)
as
begin

	declare @id int
	declare @taux decimal(18,5)
	declare @retour decimal(18,5)

	if @Date is null
		set @Date = GETDATE()

	if @DeviseTar is not null
		select top 1 @taux = TauxConversion, @id = IdTauxConversion
		from TauxConversion
		where IdDeviseSource = @DeviseRef and IdDeviseCible = @DeviseTar
		and DateApplication < @Date
		order by DateApplication desc
	else
		select top 1 @taux = TauxConversion, @id = IdTauxConversion
		from TauxConversion t inner join Pays p
		on t.IdDeviseCible = p.idDevise
		where IdDeviseSource = @DeviseRef and p.LibellePays = @Pays
		and DateApplication <= @Date
		order by DateApplication desc

	if @taux is null
		select top 1 @taux = TauxConversion
		from TauxConversion
		where IdDeviseSource = @DeviseRef and IdDeviseCible = 'USD'
		and DateApplication <= @Date
		order by DateApplication desc

	return @taux * @Valeur
end