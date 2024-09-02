-- Hic siparis vermemis musterim varmi ? Customer , orders

select * from customers
where customer_id not in (select customer_id from orders)

-- hic siparis almamis calisan varmi ?
select * from employees
where employee_id not in (select employee_id from orders)

Select product_name urunadi,
(select category_name from categories where categories.category_id =products.category_id) kategori,
(select company_name from suppliers where suppliers.supplier_id =products.supplier_id) tedarikci
from products