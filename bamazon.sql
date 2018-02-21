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
