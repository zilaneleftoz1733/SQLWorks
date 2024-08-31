--tek satırlık yorum satırı
/*
çok satırlı yorum
*/
--select veri tabanında tabloları yada viewları sorgulamaya yarar
-- genel kullanımı select *from <tabloadı>
select * from Products;
select * from Categories;
select * from shippers;
select * from Employees;
--order tablosunda ilk 5 ürünü getir
select top 5 * from Orders 
select  top 5 * from [Order Details]
--products tablosunda id değeri 42 olanı getir
select * from products where ProductID =42;
select * from Suppliers

/*select ifadesinde * kullanılırsa tablodaki field alanları gelir 
Bu genelde tercih edilen bir durum değildir çunku fazladan network trafiğine neden olur .
Bundan kaçmanın yolu ihtiyaç duyulan field'ların tek tek aralarında virgül olmak kaydıyla belirlenmesidir.
*/
select EmployeeID,FirstName,LastName from Employees;--bu tercih edilir.
select * from Employees;

--data filtreleme : filtreleme yapmak için where şartı kullanılır.
--amerika daki müşterilerin listesi
select * from customers where country='USA';
--Amerikadaki müşterilerin seattle de olanların listesi
select* from customers where country='USA' and city='Seattle';

--where şartında null kayıtların aranması
select * from customers  where region is null;

-- tarih ile ilgili alanların sorgulanması
select * from orders where year(OrderDate)=1996;
select * from orders where month(OrderDate)=7;
select * from orders where day(OrderDate)=5;

select * from orders where DATEPART(year,OrderDate) = 1996;
select * from orders where DATEPART(month,OrderDate) = 7;
select * from orders where DATEPART(day,OrderDate) = 5;

-- sayısal alanlarda sorgulama
select * from orders where ShipVia =3;
select * from Suppliers ;
-- amerika dışındakı tedarıkçilerin listesi
select * from Suppliers where country !='USA';


