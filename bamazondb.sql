-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "animals_db" database --
CREATE DATABASE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE products (
  -- Makes a string column called "name" which cannot contain null --
  ID INTEGER NOT NULL AUTO_INCREMENT,
  -- Makes a boolean column called "has_pet" which cannot contain null --
  product_name VARCHAR(50) NOT NULL,
  -- Makes a sting column called "department name" --
  department_name VARCHAR(50) NOT NULL,
  -- Makes an numeric column called "price" --
  price INTEGER(10),
  -- Makes an numeric column called "stock" --
  stock INTEGER(10)
);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Monterrey-Guadalajara", "trafico", 100, 1);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Queretaro", "trafico", 120, 5);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Mexico", "trafico", 130, 3);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Campeche", "trafico", 220, 2);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Tijuana", "trafico", 250, 6);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Leon", "trafico", 110, 6);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Veracruz", "trafico", 180, 6);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-San Luis Potosi", "trafico", 105, 6);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Culiacan", "trafico", 200, 6);

INSERT INTO products (ID, product_name, department_name, price, stock)
VALUES ("Monterrey-Torreon", "trafico", 80, 6);