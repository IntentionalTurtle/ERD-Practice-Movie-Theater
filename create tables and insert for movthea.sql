create table concessions(
	item_id SERIAL primary key,
	item_price NUMERIC(4,2),
	item_inv Integer,
	item_name VARCHAR(100)
);

create table movies(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_showtime VARCHAR(200)
);

create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR (150),
	billing_info VARCHAR(150)
);

create table tickets(
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(4,2),
	movie_id Integer not null,
	foreign key(movie_id) references movies(movie_id)
);

create table online_cart(
	cart_id SERIAL primary key,
	item_id Integer,
	foreign key(item_id) references concessions(item_id),
	ticket_id Integer,
	foreign key(ticket_id) references tickets(ticket_id),
	customer_id Integer not null,
	foreign key(customer_id) references customers(customer_id),
	total_cost NUMERIC(4,2)
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values(
	1,
	'Matt',
	'McCullen',
	'7789 Pickle Street, VA 55252',
	'4242-2424-4242-4242 555 01/20'
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values(
	2,
	'Henry',
	'McCullen',
	'7789 Pickle Street, VA 55252',
	'5555-5555-5555-5555 111 05/25'
);

insert into movies(
	movie_id,
	movie_name,
	movie_showtime 
) values(
	1,
	'The Big Lebowski',
	'7pm - 9:15pm'
);

insert into movies(
	movie_id,
	movie_name,
	movie_showtime 
) values(
	2,
	'The Naked Gun',
	'5pm - 6:45pm'
);

insert into tickets(
	ticket_id,
	ticket_price,
	movie_id
) values(
	1,
	8.99,
	1
);

insert into tickets(
	ticket_id,
	ticket_price,
	movie_id
) values(
	2,
	6.99,
	2
);

insert into concessions(
	item_id,
	item_price,
	item_inv,
	item_name 
) values(
	1,
	14.99,
	500,
	'Popcorn'
);

insert into online_cart(
	cart_id,
	item_id,
	ticket_id,
	customer_id,
	total_cost 
) values(
	1,
	1,
	2,
	2,
	21.98
);


select * from tickets
























