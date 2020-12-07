--TABLE PERSON
--1
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name TEXT, 
  age INTEGER,
  height INTEGER,
  city TEXT,
  favorite_color TEXT
);
--2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Zach', 26, 160, 'Bellevue', 'Purple');
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jake', 42, 180, 'Gilbert', 'Blue'), ('Melanie', 35, 155, 'Huachuca City', 'Green'),
('Abe', 4, 115, 'Scottsdale', 'Red'), ('McKay', 2, 95, 'Glendale', 'Yellow');
--3
SELECT * FROM person
ORDER BY height DESC
--4
SELECT * FROM person
ORDER BY height ASC
--5
SELECT * FROM person
ORDER BY age DESC
--6
SELECT * FROM person
WHERE age > 20
--7
SELECT * FROM person
WHERE age = 18
--8
SELECT * FROM person
WHERE age < 18 OR age > 30;
--9
SELECT * FROM person
WHERE age != 27;
--10
SELECT * FROM person
WHERE favorite_color != 'Red';
--11
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
--12
SELECT * FROM person
WHERE favorite_color = 'Green' OR favorite_color = 'Orange';
--13
SELECT * FROM person
WHERE favorite_color OR ('Orange', 'Green', 'Blue');
--14
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

--TABLE ORDERS
--1
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(150),
  product_price NUMERIC,
  quantity INTEGER
);
--2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Chicken-ala-king', 14.75, 1), (2, 'Steak', 24.50, 2), 
(3, 'Noodles', 11.50, 1), (2, 'Lobster', 34.50, 1), (4, 'Oatmeal', 3.00, 1);
--3
SELECT * FROM orders;
--4
SELECT SUM(quantity) FROM orders;
--5
SELECT SUM(quantity * product_price) FROM orders;
--6
SELECT SUM(quantity * product_price) FROM orders where person_id = 2;

--TABLE ARTIST
--1
INSERT INTO artist (name)
VALUES ('Ryan Adams'), ('BON IVER'), ('Boyz II Men');
--2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
--3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
--4
SELECT * FROM artist 
WHERE name LIKE 'Black%';
--5
SELECT * FROM artist 
WHERE name LIKE '%Black%';

--TABLE EMPLOYEE
--1
SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary';
--2
SELECT MAX(birth_date) FROM employee;
--3
SELECT MIN(birth_date) FROM employee;
--4
SELECT * FROM employee WHERE reports_to = 2;
--5
SELECT count(*) FROM employee 
WHERE city = 'Lethbridge'; 

--TABLE INVOICE
--1
SELECT count(*) FROM invoice 
WHERE billing_country = 'USA';
--2
SELECT MAX(total) FROM invoice;
--3
SELECT MIN(total) FROM invoice;
--4
SELECT * FROM invoice 
WHERE total > 5;
--5
SELECT COUNT(*) FROM invoice 
WHERE total < 5;
--6
SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');
--7
SELECT AVG(total) FROM invoice;
--8
SELECT SUM(total) FROM invoice;