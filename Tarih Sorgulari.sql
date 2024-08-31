--tarih sorgularında genel olarak kullanılan date_part fonksıyonu vardır

select * from orders where DATEPART(YEAR,OrderDate)=1996;--sql server için
select * from orders where year(OrderDate)=1996 and MONTH(OrderDate)=7 and DAY(OrderDate)=8;

--select * from orders where date_part('year',order_date)=1996;--postgresql
--select * from orders where date_part('month',order_date)=7;--postgresql
--select * from orders where date_part('day',order_date)=7;--postgresql

