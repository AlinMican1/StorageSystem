SELECT product_name
FROM product
WHERE product_manufacturer = 'Samsung'
ORDER BY product_price ASC;

SELECT DISTINCT product_name
FROM product
NATURAL JOIN rating
WHERE rating_stars >= 3;

SELECT product_name AS "PRODUCT NAME" , MAX(rating_date) AS "MOST RECENT REVIEW" , cast(AVG(rating_stars) as decimal (10 , 2)) AS "AVERAGE RATING"
FROM product 
NATURAL JOIN rating
GROUP BY product_name
ORDER BY AVG(rating_stars) DESC;

SELECT customer_name AS "CUSTOMER NAME", product_name AS "PRODUCT NAME", MIN(rating_stars) AS "MINIMUM STARS"
FROM rating
INNER JOIN customer
ON customer.cust_id = rating.cust_id
INNER JOIN product
ON rating.prod_id = product.prod_id
GROUP BY customer_name, product_name
HAVING COUNT(rating.cust_id) > 1 AND COUNT(rating.prod_id) > 1;
