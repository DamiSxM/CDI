select c.CustomerID, count(*)
from Customers c inner join Orders o
on c.CustomerID = o.CustomerID
group by c.CustomerID

select *
from Customers

update Customers
set OrdersNumber=(select COUNT(OrderID)
from Orders where Customers.CustomerID=Orders.CustomerID)