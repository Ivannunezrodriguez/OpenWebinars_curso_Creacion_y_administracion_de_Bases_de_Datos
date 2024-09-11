select * FROM film where length >=120;
select * from film where title like '%love%';
select * from actor where last_name in ('allen','paltrow');
select * from actor where last_name ='allen' or last_name ='paltrow';
select title as 'film name' , rental_rate as price 
from film 
where (length BETWEEN 90 and 120)
and (rental_rate <=3 or replacement_cost <15)
order by price desc , title ;
select count(*) as 'clientes activos'
from customer 
WHERE active=1;
select max(rental_rate) as 'precio maximo' from film;
select count(film_id),rental_rate 
from film 
group by rental_rate order by rental_rate desc;
select count(film_id) ,rental_rate 
from film 
where replacement_cost<=20
group by rental_rate 
order by rental_rate desc;
select count(film_id),replacement_cost 
from film 
where replacement_cost<=20
group by replacement_cost
HAVING count(film_id)>=50
order by replacement_cost;
select FIRST_name, last_name, address
from customer c, address a
where c.address_id=a.address_id;
select first_name, last_name , address 
from customer c left join address a
on c.address_id = a.address_id;
insert into actor (last_name, first_name )
values ('de la calzada','chiquito');
insert into actor values (203,'chiquito','de la calzada','2018-04-04 00:28:22');
select * from actor where first_name like 'chiquito';
delete from actor where actor_id =204;
update actor 
set first_name ='txkito',last_name='de la kalzada'
where last_name='de la calzada';
select * from actor where first_name like 'txkito';