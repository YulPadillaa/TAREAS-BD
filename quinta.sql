--TAREA 5
--Construida por elisa, alejandra y yuliana. 

--Sacamos datos necesarios para resolver el problema
with 
	films_per_store as( 
	select i.store_id, count(i.film_id) as num_films
	from inventory i
	group by i.store_id),
	
	max_films_per_cyl as (
	select 50/0.5 as films_per_cyl),
	
	cyl_height as (
	select (2.5*mf.films_per_cyl) as cyl_height 
	from max_films_per_cyl mf),
	
	cyl_radius as (
	select (sqrt(power(30/2,2) + power(21/2,2))) as cyl_radius),
	
	cyl_volume as(
	select (pi()*power(r.cyl_radius,2)*h.cyl_height) as cyl_volume 
	from cyl_height h, cyl_radius r)
	
--Ahora podemos saber cuantos cilindros necesitamos
	select i.store_id, ceil(f.num_films/100) as cyl_per_store 
	from inventory i, films_per_store f;
