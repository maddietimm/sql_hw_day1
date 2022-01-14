
-- How many actors have the last name Wahlberg (2)
select first_name,last_name from actor
where last_name = 'Wahlberg';
--How many payments were made between 3.99 and 5.99 (3,409)
select amount,count(amount) from payment
where amount > 3.99 and amount < 5.99
group by amount;
--What film does the store have the most of (Curtain VIdeotape, 9 copies)
select film_id,count(film_id) from inventory
group by film_id
order by count(film_id) desc;
--How many custoemrs have the las name William (0, Williams, Willis and WIlliamson, but no William)
select first_name,last_name from customer 
where last_name like 'Will__%';
-- What store employee sold the most rentals? (1 Mike, 8040 rentals)
select staff_id,count(staff_id) from rental
group by staff_id;
--How many different district names are there? (603)
select count(district) from address;
--What film has the most actors in it? (use film_actor table and get film_id)
select film_id,count(actor_id) from film_actor
group by film_id
order by count desc;
-- How many payment amounts (4.99, 5.99, etc.) had a number 
-- of rentals above 250 for customers with ids between 380 and 430? 
--(use group by and having > 250) (2.99-275, 4.99-273,0.99-257)
select amount,count(rental_id) from payment
where customer_id < 430 and customer_id > 380
group by amount
order by count desc;
--Within the film table, how many rating categories are there?
--And what rating has the most movies total? 5 categories, PG-13 has the most films
select rating,count(rating) from film
group by rating 
order by count desc;

