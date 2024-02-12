
-- EXERCISE 1
-- The first step towards designing a database schema is to create tables with the appropriate columns and primary keys.
create table restaurant (
  id integer PRIMARY KEY,
  name varchar(20),
  description varchar(100),
  rating decimal,
  telephone char(10),
  hours varchar(100)
);

-- EXERCISE 2
-- In script.sql, assign a primary key to a column for each of the tables, restaurant and address. Then, write queries to validate that these primary keys exist for these tables.
create table address(
  id integer PRIMARY KEY,
  street_number varchar(10),
  street_name varchar(20),
  city varchar(20),
  state varchar(15),
  google_map_link varchar(50),
  restaurant_id integer REFERENCES restaurant(id)
);


-- EXERCISE 3
-- In script.sql, create a category table. Check the hint for how to do this.
create table category (
  id char(2) PRIMARY KEY,
  name varchar(20),
  description varchar(200)
);

-- EXERCISE 4
-- In script.sql, create a dish table. Check the hint to see how to create the dish table.
create table dish (
  id integer PRIMARY KEY,
  name varchar(50),
  description varchar(200),
  hot_and_spicy boolean
);

-- EXERCISE 5
-- In script.sql, create a review table with columns that make sense. Check the hint for how to create this table.
create table review (
  id integer PRIMARY KEY,
  rating decimal,
  description varchar(100),
  date date,
  restaurant_id integer REFERENCES restaurant(id)
);

create table categories_dishes (
  category_id REFERENCES category(id),
  dish_id REFERENCES dish(id),
  price money,
  PRIMARY KEY (category_id, dish_id)
);
