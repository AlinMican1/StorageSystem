INSERT INTO product VALUES ('C32', 'T-Shirt', 32.00, 'Nike');
INSERT INTO product VALUES ('C48', 'Shoes', 40.00, 'Puma');
INSERT INTO product VALUES ('L23', 'Calculator', 34.00, 'Casio');
INSERT INTO product VALUES ('T42', 'CPU', 349.99, 'Intel');
INSERT INTO product VALUES ('B32', 'Keyboard', 89.00, 'Corsair');
INSERT INTO product VALUES ('G44', 'Phone', 567.99, 'Samsung');
INSERT INTO product VALUES ('G12', 'Monitor', 220.00, 'Samsung');
INSERT INTO product VALUES ('G56', 'Microwave', 69.99, 'Samsung');


INSERT INTO customer VALUES (1, 'James Bond', '137 Felix Lane NN12 0EY');
INSERT INTO customer VALUES (3, 'Wata Tichio', '100 Ploughley Rd IV1 6ZP');
INSERT INTO customer VALUES (7, 'Pepe Mogus', '119 Annfield Rd EX19 5JE');
INSERT INTO customer VALUES (12, 'Candice Jenner', '99 East Street IV51 4FW');
INSERT INTO customer VALUES (9, 'Kate Optimus', '120 Well Lane TA7 4SQ');

INSERT INTO rating VALUES ('B32', 12, '2012-08-14', 4);
INSERT INTO rating VALUES ('C48', 7, '2017-08-23', 2);
INSERT INTO rating VALUES ('C32', 1, '2021-02-27', 0);
INSERT INTO rating VALUES ('L23', 9, '2010-04-09', 1);
INSERT INTO rating VALUES ('T42', 3, '2012-12-01', 5);
INSERT INTO rating VALUES ('T42', 12, '2011-09-06', 5); -- Adding double values to test Foreign keys.
INSERT INTO rating VALUES ('T42', 1, '2011-09-07', 6); --This is testing the CONSTRAINT
INSERT INTO rating VALUES ('G44', 12, '2009-09-13', 3); 
INSERT INTO rating VALUES ('G44', 12, '2018-09-16', 5);
INSERT INTO rating VALUES ('G12', 1, '2003-09-23', 3); 
INSERT INTO rating VALUES ('G12', 1, '2019-09-25', 1);

INSERT INTO sale VALUES ('S-46', 'C32', 3, 2, 64.00);
INSERT INTO sale VALUES ('S-32', 'C48', 1, 3, 120.00);
INSERT INTO sale VALUES ('S-11', 'L23', 12, 1, 34.00);
INSERT INTO sale VALUES ('S-602', 'B32', 7, 3, 1049.97);
INSERT INTO sale VALUES ('S-10', 'T42', 9, 34, 3026.00);
INSERT INTO sale VALUES ('S-12', 'T42', 9, 1, 89.00); -- Adding double values to test Foreign Keys.
INSERT INTO sale VALUES ('S-13', 'L23', 7, 1, 34.00);
