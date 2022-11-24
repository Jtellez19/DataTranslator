--select first_name,last_name from actor;

select upper(first_name) || ' ' ||upper(last_name) as 'Actor Name' 
from actor

select actor_id 
from actor
where first_name like '%joe%' 

select * 
from actor
where last_name like '%gen%'

select * 
from actor
where last_name like '%li%' order by 3,2

select country_id
from country 
where country in ('Afghanistan','Bangladesh','China')

--Enumera los apellidos de los actores, así como cuántos actores tienen ese apellido.
select last_name,count(*),ROW_NUMBER() OVER(ORDER BY last_name asc) AS orden
from actor
group by last_name

--Enumere los apellidos de los actores y el número de actores que tienen ese apellido, pero sólo para los nombres que comparten al menos dos actores.
select ROW_NUMBER() OVER(ORDER BY last_name asc) AS orden,last_name,count(last_name) as repetido
from actor
group by last_name
having count(last_name)>=2

--Utilice JOIN para mostrar los nombres y apellidos, así como la dirección, de cada miembro del personal. Utilice las tablas staff y address:
select s.first_name,s.last_name,a.address 
from staff s 
inner join address a on s.address_id = a.address_id

--Utilice JOIN para mostrar el importe total recaudado por cada miembro del personal en agosto de 2005. Utilice las tablas personal y pago.
select s.first_name,s.last_name,sum(p.amount) as total 
from staff s inner join 
payment p on s.staff_id = p.staff_id
where p.payment_date >= '2005-08-01' and p.payment_date <= '2005-08-30'

--Enumere cada película y el número de actores que figuran en ella. Utilice las tablas actor_película y película. Utilice la unión interna.
select fa.film_id, f.title,count(fa.actor_id) as actores
from film_actor fa
inner join film f on fa.film_id = f.film_id  
group by fa.film_id



--¿Cuántas copias de la película Jorobado Imposible existen en el sistema de inventario?
select count(*)as NumCopias from inventory where film_id = 439

--Utilizando las tablas payment y customer y el comando JOIN, enumera el total pagado por cada cliente. Enumera los clientes alfabéticamente por su apellido.
select p.customer_id,upper(c.first_name) || ' ' ||upper(c.last_name) as 'Customer Name',sum(p.amount) 
from payment p
inner join customer c on p.customer_id = c.customer_id 
group by p.customer_id
order by c.first_name asc
