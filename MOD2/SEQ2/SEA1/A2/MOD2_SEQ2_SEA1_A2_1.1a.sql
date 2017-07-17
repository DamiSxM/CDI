select * from Products
join Categories on Products.CategoryID = Categories.CategoryID
where CategoryName = 'Seafood'