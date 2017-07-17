create function ConvertToDevise
(
	@devise char(3)
)
returns table
as
return
(
	select
	[ProductName]
    ,[SupplierID]
    ,[CategoryID]
    ,[QuantityPerUnit]
    ,dbo.Change([UnitPrice], 'USD',null, @devise, null) as [UnitPrice]
    ,[UnitsInStock]
    ,[UnitsOnOrder]
    ,[ReorderLevel]
    ,[Discontinued]
    ,[UnitsReserved]
  FROM [ComptoirInternational].[dbo].[Products]
)