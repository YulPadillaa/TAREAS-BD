--tarea 1: Yuliana Padilla 188037
-- NOTA: como se recomendo en clase, Alejandra, Elisa y Yuliana compartimos nuestros conocimientos despu�s de haber elaborado de manera individual nuestra tarea,
-- cada una sabe como hacer cada pregunta, sin embargo, intercambiamos opiniones y formas de hacerlo para enriquecer nuestro conocimiento en la materia. 
--EJERCICIO:
-- Qu� contactos de proveedores tienen la posici�n de sales representative?
	select contact_name, contact_title 
	from suppliers 
	where contact_title = 'Sales Representative';

-- Qu� contactos de proveedores no son marketing managers?
	select contact_name, contact_title 
	from suppliers 
	where not contact_title = 'Marketing Manager';

-- Cuales �rdenes no vienen de clientes en Estados Unidos? <> significa diferente a 
	select order_id  from orders where ship_country <> 'USA';

-- Qu� productos de los que transportamos son quesos?
	select p.product_id, p.product_name
	from products p 
	where p.category_id = 4;

-- Qu� ordenes van a B�lgica o Francia? ** look 4 the opposite of <>
	select * from orders where (ship_country='Belgium'or ship_country= 'France');

-- Qu� �rdenes van a LATAM? 
	select * from orders where (ship_country='Venezuela'or ship_country= 'Argentina' or ship_country='Mexico');

-- Qu� �rdenes no van a LATAM?
	select * from orders where (ship_country<>'Venezuela'or ship_country<> 'Argentina' or ship_country<>'Mexico');

-- Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro ** tengo duda en este
	select concat(first_name, ' ' ,last_name) as fullname from employees;

-- Cu�nta lana tenemos en inventario?
	select sum(units_in_stock * unit_price) as money_in_inventory 
	from products p  ;


-- Cuantos clientes tenemos de cada pa�s?
	select country, count(*) from customers group by country;

-- group by, count, where, 
-- 

--EJERCICIO MOD 8:

-- Obtener un reporte de edades de los empleados para checar su elegibilidad para seguro de gastos m�dicos menores.
	select first_name, last_name, age(now(), birth_date) as age from employees order by birth_date;
-- Cu�l es la orden m�s reciente por cliente?
	select customer_id, order_id, max (order_date) as mas_reciente from orders group by ( customer_id, order_id);

-- De nuestros clientes, qu� funci�n desempe�an y cu�ntos son? � qu� trabajos tienen nuestros clientes y cu�ntos hay por cada tipo de trabajo?
	select contact_title, count(*) from customers group by contact_title;

-- Cu�ntos productos tenemos de cada categor�a?
	select p.category_id, c.category_name, count(p.product_id) as nom_categoria 
	from products p join categories c on c.category_id = p.category_id 
	group by (p.category_id, c.category_id)

-- C�mo podemos generar el reporte de reorder?
	select p.product_id, p.product_name, p.units_in_stock, p.reorder_level
	from products p
	where p.units_in_stock < p.reorder_level;


-- A donde va nuestro env�o m�s voluminoso?
	select 

-- C�mo creamos una columna en customers que nos diga si un cliente es bueno, regular, o malo?

-- Qu� colaboradores chambearon durante las fiestas de navidad?

-- Qu� productos mandamos en navidad?

-- Qu� pa�s recibe el mayor volumen de producto?
