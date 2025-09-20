--نام و قیمت محصولات بالای 500 دلار
select Name,Price from Products where Price > 500

--مجموع مبلغ سفارشات هر سال
select Year(OrderDate) as OrderYear,Sum(TotalAmount) as TotalSales
from Orders group by Year(OrderDate);

--مجموع فروش برای هر دسته بندی
select c.Name as CategoryName, Sum(o.TotalAmount) as TotalSales
from Orders o Join Products p on o.ProductId = o.Id Join Categories c on p.CategoryId = c.Id
group by c.Name

select c.Name as Category, IsNull(Sum(TotalAmount),0) as Income
from Categories c
Left Join Products as p on p.CategoryId = c.Id
Left Join Orders as o on o.ProductId = p.Id
Group by c.Name Order by Income Desc;

--نام محصولات و قیمت شان
select Name,Price from Products order by Price DESC;

--تعداد سفارشات هر مشتری
select c.Name as CustomerName, Count(*) as OrderCount 
from Customers c Join Orders o on c.Id = o.CustomerId group by c.Name

select c.Name as CustomerName, Count(o.Id) as OrderCount
from Customers c Left Join Orders o on c.Id = o.CustomerId group by c.Name

--متوسط قیمت محصولات در هر دسته بندی
select c.Name as CategoryName,Avg(p.Price) as AveragePrice
from Categories c Left Join Products p  on p.CategoryId = c.Id group by c.Name;

--نام محصولات و دسته بندی به ترتیب الفبا
select p.Name as ProductName,c.Name as CategoryName
from Products p Join Categories c on p.CategoryId = c.Id order by p.Name 

select c.Name as CategoryName,p.Name as ProductName
from Products p Join Categories c on p.CategoryId = c.Id order by c.Name 

--مجموع سفارشات هر دسته بندی در سال 2023
select c.Name as CategoryName,Sum(o.TotalAmount) as TotalSales2023
from Orders o Join Products p on o.ProductId = p.Id Join Categories c on p.CategoryId = c.Id
where Year(o.OrderDate) = 2023 group by c.Name

--تعداد سفارشات هر ماه
select Year(OrderDate) as OrderYear,Month(OrderDate) as OrderMonth, Count(*) as OrderCount
from Orders group by Year(OrderDate),Month(OrderDate) order by Year(OrderDate) DESC;

--مجموع مبلغ سفارش برای هر مشتری
select c.Name as CustomerName,Sum(o.TotalAmount) as TotalPurchase
from Customers c Join Orders o on o.CustomerId = c.Id group by c.Name

--تعداد سفارشات برای هر دسته بندی
select c.Name as CategoryName,Count(o.Id) as OderCount
from Orders o Join Products p on o.ProductId = o.Id Join Categories c on p.CategoryId = c.Id group by c.Name

--نام و تعداد سفارشات هر مشتری
select c.Name as CustomerName,Count(o.Id) OrderCount
from Customers c Join Orders o on o.CustomerId = c.Id
group by c.Name order by OrderCount DESC;

select c.Name as CustomerName,Count(o.Id) OrderCount
from Customers c Left Join Orders o on o.CustomerId = c.Id
group by c.Name order by OrderCount DESC;

--تعداد سفارشات هر سال
select Year(OrderDate),Count(*) OrderCount
from Orders group by Year(OrderDate) order by Year(OrderDate) DESC;

--تعداد خریداران هر محصول
select p.Name as ProductName,Count(o.CustomerId) as CustomerCount
from Products p Join Orders o on o.ProductId = p.Id group by p.Name order by CustomerCount DESC;

select p.Name as ProductName,Count(Distinct o.CustomerId) as CustomerCount
from Products p Join Orders o on o.ProductId = p.Id group by p.Name order by CustomerCount DESC;
