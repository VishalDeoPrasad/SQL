CREATE TABLE product(
   product_id          INTEGER  NOT NULL PRIMARY KEY 
  ,product_name        VARCHAR(37) NOT NULL
  ,product_size        VARCHAR(14)
  ,product_category_id INTEGER  NOT NULL
  ,product_qty_type    VARCHAR(4)
);
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (1,'Habanero Peppers - Organic','medium',1,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (2,'Jalapeno Peppers - Organic','small',1,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (3,'Poblano Peppers - Organic','large',1,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (4,'Banana Peppers - Jar','8 oz',3,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (5,'Whole Wheat Bread','1.5 lbs',3,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (6,'Cut Zinnias Bouquet','medium',5,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (7,'Apple Pie','10',3,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (8,'Cherry Pie','10',3,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (9,'Sweet Potatoes','medium',1,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (10,'Eggs','1 dozen',6,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (11,'Pork Chops','1 lb',6,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (12,'Baby Salad Lettuce Mix - Bag','1/2 lb',1,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (13,'Baby Salad Lettuce Mix','1 lb',1,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (14,'Red Potatoes',NULL,1,NULL);
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (15,'Red Potatoes - Small',NULL,1,NULL);
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (16,'Sweet Corn','Ear',1,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (17,'Carrots','sold by weight',1,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (18,'Carrots - Organic','bunch',1,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (19,'Farmer''s Market Resuable Shopping Bag','medium',7,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (20,'Homemade Beeswax Candles','6',7,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (21,'Organic Cherry Tomatoes','pint',1,'unit');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (22,'Roma Tomatoes','medium',1,'lbs');
INSERT INTO product(product_id,product_name,product_size,product_category_id,product_qty_type) VALUES (23,'Maple Syrup - Jar','8 oz',2,'unit');
