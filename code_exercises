
-- EXERCISE 1
create table restaurant (
  id integer PRIMARY KEY,
  name varchar(20),
  description varchar(100),
  rating decimal,
  telephone char(10),
  hours varchar(100)
);

-- EXERCISE 2
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
create table category (
  id char(2) PRIMARY KEY,
  name varchar(20),
  description varchar(200)
);

create table dish (
  id integer PRIMARY KEY,
  name varchar(50),
  description varchar(200),
  hot_and_spicy boolean
);

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
