select distinct CompanyName from Customers
join Orders on Customers.CustomerID = Orders.CustomerID
where OrderID not in
(select distinct OrderID from Orders where YEAR(GETDATE()) - YEAR(OrderDate) < 5)
