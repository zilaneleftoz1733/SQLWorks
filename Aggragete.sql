--Bu bölümdeki genel hatlar: toplama fonsiyonları,gruplama fonksiyonları,sayma fonksiyonları
--count => bir tabloda verilen degere göre kayıt sayısını bulur.

select COUNT(*)  from Employees-- tablodaki kayıt sayısı
select count(first_name) from employees -- 9 kayıt
select count(region) from employees -- 5 kayıt çıkar null değer saymaz 
select * from employees where region is null
select count(distinct country) from employees -- country alanını tekil sayar

--Sum => toplama
select sum(unit_price) from products--sayısal alanlarda çalısır.
select sum(date_part('year',Birth_Date))/count(Birth_Date) from employees--çalışanların yaş ortalaması

select avg(date_part('year',Birth_Date)) from employees -- yaş ortalaması
select avg(unit_price) from products where products.category_id=1;-- fiyat ortalaması

--Yuvarlama

--yukarı yuvarlama
select ceiling(10.5);
select ceiling(11.5);
select ceiling(12.5);
select ceiling(13.1);
select ceiling(10.0);

--aşağı yuvarlama
select floor(10.9);
select floor(10.5);
select floor(10.1);

--normal yuvarlama
select ROUND(10.5);
select ROUND(11.4);
select ROUND(12.6);
select ROUND(13.1);

--Min,Max
select MAX(unit_price) from products
select * from products order by unit_price desc limit 1;--max ın bir diğer yazımı

select max(Birth_Date) from employees;
select max (First_Name) from employees;
select min (First_Name) from employees;



--sıralama order by (order by cümlenin her zman sonuna yazılır)
select * from employees order by first_name --artan sırada sıralar default
select * from employees order by first_name desc ,Birth_Date--azalan sıaradaa virgul ile ayrılarak istedildiği kadar field eklenebilir

select first_name,last_name,Birth_Date,title
from employees order by 2,4 --önce lastname ardından tıttle a göre sıralar

select first_name Ad ,last_name Soyad,Birth_Date DogumTarihi,title
from employees order by Soyad,DogumTarihi--alias ile sıralama