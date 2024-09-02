--ülkelerin siparişlerinin yıllara göre dağılımını bulalım
 select date_part('year',order_date) yil, ship_country , count(*) adet
 from orders
 group by  date_part('year',order_date),ship_country
 having count(*) >=10 and count(*)<=20
 order by adet ASC


select * from order_details limit 20
---örnek : en yüksek cirolu ilk 5 sipariiş -- -- toplam cirosu 5000 ile 10000 arasnda olan siparişleri listele
select  order_id ,sum(unit_price * quantity) Ciro 
from order_details
group by order_id
having sum(unit_price * quantity) >=5000 and sum(unit_price * quantity)<= 10000
order by Ciro  ASC

--between ile cozumu
select order_id ,sum(unit_price*quantity) Ciro 
from order_details 
GROUP by Order_id 
having sum(unit_price*quantity) between 5000 and 10000
order by Ciro desc 