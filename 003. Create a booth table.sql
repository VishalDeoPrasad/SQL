CREATE TABLE booth(
   booth_number      INTEGER  NOT NULL PRIMARY KEY 
  ,booth_price_level VARCHAR(1) NOT NULL
  ,booth_description VARCHAR(78) NOT NULL
  ,booth_type        VARCHAR(8) NOT NULL
);
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (1,'A','First booth to the left as you enter the center door','Standard');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (2,'A','Second booth to the left as you enter the center door','Standard');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (3,'B','Third booth to the left as you enter the center door - Small square table size','Small');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (4,'C','First booth on left end of building - Small square table size','Small');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (5,'C','Second booth on left end of building  - Small square table size','Small');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (6,'C','Third booth on left end of building  - Small square table size','Small');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (7,'A','First booth to the right as you enter the center door','Standard');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (8,'C','First booth on right end of building  - Small square table size','Small');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (9,'C','First booth on right end of building  - Small square table size','Small');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (10,'B','Back right booth  - Large rectangular table size','Large');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (11,'B','Back center booth  - Large rectangular table size','Large');
INSERT INTO booth(booth_number,booth_price_level,booth_description,booth_type) VALUES (12,'B','Back left booth  - Large rectangular table size','Large');
