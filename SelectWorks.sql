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

