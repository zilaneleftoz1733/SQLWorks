-- like kullanımı where şartından sonra kullanılır.
-- kelimenin baş harfi m olanları getır
select * from Employees where FirstName LIKE 'm%'-- postgreSQL
select * from Employees where FirstName LIKE 'm%'--msssql

--first name a ile bitenler 
select * from Employees where FirstName LIKE '%a';

--firstname içerisinde 'an' olanlar
select * from Employees where FirstName LIKE '%an%';

--isminde ilk harf a olacak ikinci harf onemli değil üçüncü harf 
select * from Employees where FirstName LIKE 'a_n%';

-- notlarında italian kelimesi geçen çalışanlar
select * from Employees where Notes LIKE '%Italian%';

--Adının ilk harfi a ya da L olanlar
select * from Employees where FirstName LIKE 'a%' or FirstName like 'l%';
--bir diğer kullanımı
select * from Employees where FirstName LIKE '[al]%'--mssqle özel

--postgresql için
--select * from Employees where first_name SIMILAR TO '[AL]%'