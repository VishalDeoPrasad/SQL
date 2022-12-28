CREATE TABLE product_category(
   product_category_id   INTEGER  NOT NULL PRIMARY KEY 
  ,product_category_name VARCHAR(29) NOT NULL
);
INSERT INTO product_category(product_category_id,product_category_name) VALUES (1,'Fresh Fruits & Vegetables');
INSERT INTO product_category(product_category_id,product_category_name) VALUES (2,'Packaged Pantry Goods');
INSERT INTO product_category(product_category_id,product_category_name) VALUES (3,'Packaged Prepared Food');
INSERT INTO product_category(product_category_id,product_category_name) VALUES (4,'Freshly Prepared Food');
INSERT INTO product_category(product_category_id,product_category_name) VALUES (5,'Plants & Flowers');
INSERT INTO product_category(product_category_id,product_category_name) VALUES (6,'Eggs & Meat (Fresh or Frozen)');
INSERT INTO product_category(product_category_id,product_category_name) VALUES (7,'Non-Edible Products');
