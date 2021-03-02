-- 3.02 Lab
use sakila;
-- 1
select s.store_id, c.city_id, c.city, c.country_id, co.country from store s
join address a on s.address_id = a.address_id
join city c on a.city_id = c.city_id
join country co on c.country_id=co.country_id;

-- 2
select s.staff_id, sum(p.amount) from staff s
join payment p on s.staff_id = p.staff_id
group by s.staff_id;

-- 3
select avg(f.length), fc.category_id, c.name from film f
join film_category fc on f.film_id=fc.film_id
join category c on fc.category_id=c.category_id
group by fc.category_id;

-- 4
select c.name, f.title, avg(f.length) as avg_lenght from film f
join film_category fc on f.film_id=fc.film_id
join category c on fc.category_id=c.category_id
group by c.name
order by avg(f.length) desc;

