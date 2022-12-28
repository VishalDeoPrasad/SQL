CREATE TABLE vendor(
   vendor_id               INTEGER  NOT NULL PRIMARY KEY 
  ,vendor_name             VARCHAR(32) NOT NULL
  ,vendor_type             VARCHAR(29) NOT NULL
  ,vendor_owner_first_name VARCHAR(6) NOT NULL
  ,vendor_owner_last_name  VARCHAR(9) NOT NULL
);
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (1,'Chris''s Sustainable Eggs & Meats','Eggs & Meats','Chris','Sylvan');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (2,'Hernández Salsa & Veggies','Fresh Variety: Veggies & More','Maria','Hernández');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (3,'Mountain View Vegetables','Fresh Variety: Veggies & More','Joseph','Yoder');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (4,'Fields of Corn','Fresh Focused','Samuel','Smith');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (5,'Seashell Clay Shop','Arts & Jewelry','Karen','Soula');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (6,'Mother''s Garlic & Greens','Fresh Variety: Veggies & More','Vera','Gordon');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (7,'Marco''s Peppers','Fresh Focused','Marco','Bokashi');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (8,'Annie''s Pies','Prepared Foods','Annie','Aquinas');
INSERT INTO vendor(vendor_id,vendor_name,vendor_type,vendor_owner_first_name,vendor_owner_last_name) VALUES (9,'Mediterranean Bakery','Prepared Foods','Kani','Hardi');
