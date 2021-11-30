CREATE TABLE product (
prod_id char(10) NOT NULL,
product_name char(30), -- Product Name
product_price DECIMAL(10,2), -- Price
product_manufacturer char(30), -- Manufacturer
PRIMARY KEY (prod_id)
);


CREATE TABLE customer (
cust_id int NOT NULL,
customer_name char(30), -- Customer Name
customer_address char(30), -- customer Address
PRIMARY KEY (cust_id)
);

CREATE TABLE rating (
prod_id char(10),
cust_id int, 
rating_date date NOT NULL, 
rating_stars int, -- Rating
CONSTRAINT rating_check CHECK (rating_stars IN (0, 1, 2, 3, 4, 5)),
PRIMARY KEY (rating_date),
FOREIGN KEY (prod_id) REFERENCES product (prod_id),
FOREIGN KEY (cust_id) REFERENCES customer (cust_id)
);

CREATE TABLE sale (
sale_id char(10) NOT NULL,
prod_id char(10),
cust_id int, 
sale_quantity int, -- Quantity
sale_cost DECIMAL(10,2), -- Cost
PRIMARY KEY (sale_id),
FOREIGN KEY (prod_id) REFERENCES product (prod_id),
FOREIGN KEY (cust_id) REFERENCES customer (cust_id)
);
