DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(20),
  department_name VARCHAR(20),
  price INTEGER(100),
  stock_quantity INTEGER(100),
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Gameboy", "Electronics", 50, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Jeans", "Clothing", 25, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cat Litter", "Pet Supplies", 10, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Playstation 4", "Electronics", 200, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Ham Sandwich", "Groceries", 5, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Coffee", "Groceries", 6, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Samurai's Katana", "Weaponry", 5000, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cardigan", "Clothing", 30, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dog Biscuits", "Pet Supplies", 7, 13);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("HDMI Cable", "Electronics", 10, 50);

CREATE DATABASE todolist;

USE todolist;

CREATE DATABASE blogger;

USE blogger;

CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  burger_name VARCHAR(75),
  devoured BOOLEAN,
  PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name, devoured)
VALUES ("California Burger", false);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Double Bacon Cheeseburger", false);

INSERT INTO burger (burger_name, devoured)
VALUES ("Black Bean Burger", false)