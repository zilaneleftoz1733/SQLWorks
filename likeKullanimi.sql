--tarih sorgularında genel olarak kullanılan date_part fonksıyonu vardır

select * from orders where DATEPART(YEAR,OrderDate)=1996;--sql server için
select * from orders where year(OrderDate)=1996 and MONTH(OrderDate)=7 and DAY(OrderDate)=8;

select * from orders where date_part('year',order_date)=1996;--postgresql
select * from orders where date_part('month',order_date)=7;--postgresql
select * from orders where date_part('day',order_date)=7;--postgresql
--datepart çok kullanıyor.
select DATEPART(DAYOFYEAR,GETDATE())
select DATE_PART('doy',CURRENT_TIMESTAMP)--day of year
select DATE_PART('dow',CURRENT_TIMESTAMP)--day of week
select DATE_PART('quarter',CURRENT_TIMESTAMP)--4 aylık dılımler
select * from orders where DATE_PART('quarter',order_date)=3 and DATE_PART('year',order_date)=1996
select CURRENT_TIMESTAMP --posgresql şuanki zamanı veriir
select GETDATE()-- mssql şuankı zamanı verir
--doğduğundan beri ne kadar yaşadığını hesapladık
select * from Employees
select Age(CURRENT_TIMESTAMP,Birth_Date) from Employees--postgresql

--iki tarih arasaındaki fark
select DATEDIFF(year,BirthDate ,GETDATE()) from Employees--mssql

select now(),CURRENT_TIMESTAMP
SELECT LOCALTIME;
SHOW timezone;

