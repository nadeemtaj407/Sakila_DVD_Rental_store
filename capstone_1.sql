 -- Genra base analysis 
-- Q1-name the category which rented the most .

/* Select  fc.category_id,cate.name,
        sum(p.amount) Revenue,count(i.film_id) as frequency
From
    film_category fc 
    Inner Join inventory i On fc.film_id = i.film_id 
    Inner Join rental r On r.inventory_id = i.inventory_id
    inner join payment p on r.rental_id=p.rental_id
    inner join category cate on fc.category_id = cate.category_id 
      group by fc.category_id
     Order by frequency desc
      limit 5 */

 -- Q2 Which category generated more revenue 
 /*Select  fc.category_id,cate.name,
        sum(p.amount) Revenue,count(i.film_id) as frequency
From
    film_category fc 
    Inner Join inventory i On fc.film_id = i.film_id 
    Inner Join rental r On r.inventory_id = i.inventory_id
    inner join payment p on r.rental_id=p.rental_id
    inner join category cate on fc.category_id = cate.category_id 
      group by fc.category_id
     Order by Revenue desc
      limit 5*/

 -- Q3 top three films of each genra of revenue
 
 /* SET @userinput1 :=14;

Select
sakila.fc.category_id,cate.name,f.title,
sum(p.amount) revenue,count(i.film_id) as frequency
From
    film_category fc 
    Inner Join inventory i On fc.film_id = i.film_id 
    Inner Join rental r On r.inventory_id = i.inventory_id 
    Inner Join payment p On p.rental_id = r.rental_id 
    Inner Join category cate On fc.category_id = cate.category_id
    inner join film f on f.film_id=fc.film_id
 where fc.category_id = @userinput1
 group by  fc.film_id, fc.category_id
    order by fc.category_id Asc , revenue Desc
    limit 3;*/
    
 -- Flim base analysis
 -- QNo.4.- list the movies that generate more revenue.
/* select Title, sum(amount) revenue
from film
inner join inventory
using (film_id)
inner join rental
using (inventory_id)
inner join payment
using (rental_id)
group by title
order by revenue desc
limit 3;*/

-- QNo.5. Which movie rented the most?
 /*select Title, sum(amount) revenue,count(film_id) frequency
from film
inner join inventory
using (film_id)
inner join rental
using (inventory_id)
inner join payment
using (rental_id)
group by title
order by frequency desc
limit 1;*/
 
 -- Actor base Analysis 
 -- QNo.6-how many actors are available in each category?
/* select act.actor_id, act.first_name, act.last_name, m.no_of_categories 
  from actor as act
  inner join 
 (select  a.actor_id,  count(distinct( c.category_id)) as no_of_categories 
 from film_category as c
 inner join film_actor as a 
 on a.film_id = c.film_id  group by a.actor_id) as m
 on m.actor_id = act.actor_id
 where no_of_categories>15*/
 
 -- QNoo.7. Name an actor who is the most preferable in industry, write how many films he has done?
 /*SELECT first_name, last_name, count(*) films
 FROM actor AS a
 JOIN film_actor AS fa USING (actor_id)
 GROUP BY actor_id, first_name, last_name
 ORDER BY films DESC
 LIMIT 5;  */

-- city base analysis 
  -- QNo.8. Top 5 cities where we get maximum revenue
 /* select country,City, sum(amount) revenue
from city
inner join address
using (city_id)
inner join customer
using (address_id)
inner join payment
using (customer_id)
 join country 
 using(country_id)
 group by country,city
order by revenue desc
limit 5; */
 -- Qn.9 - Five least generating cities where we get minimum revenue 
/*select country,City, sum(amount) revenue
from city
inner join address
using (city_id)
inner join customer
using (address_id)
inner join payment
using (customer_id)
 join country 
 using(country_id)
 group by country,city
order by revenue asc
limit 5; */

-- customer Base analysis

-- QNo.10 -Top 5 Customers and From which city they belongs?
/* select customer.customer_id, first_name,country,city, count(film_id) as frequency
from customer
inner join  payment using (customer_id)
inner join rental using (rental_id)
inner join address using (address_id)
inner join city using (city_id)
inner join country using (country_id)
inner join inventory on rental.inventory_id = inventory.inventory_id
group by country,city,first_name
order by frequency desc
limit 3; */

-- Q11- Who are the first 5 customers who paid the maximum amount of money?
 /* select customer.customer_id, first_name,country,city, sum(amount) as revenue
from customer
inner join  payment using (customer_id)
inner join rental using (rental_id)
inner join address using (address_id)
inner join city using (city_id)
inner join country using (country_id)
inner join inventory on rental.inventory_id = inventory.inventory_id
group by country,city,first_name
order by revenue desc
limit 5; */


 

