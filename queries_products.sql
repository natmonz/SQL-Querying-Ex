-- Comments in SQL Start with dash-dash --
-- 1. Adding product to the table = "chair", price = "44.00" and can_be_returned = "f"
INSERT INTO products
    (name, price, can_be_returned)
VALUES('chair', 44.00, 'f');

-- 2. Adding product to the table = 'stool', price = '25.99' and can_be_returned = 't'
INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('stool', 25.99, 't');

-- 3. Adding product to the table = 'table' , price = '124.00' and can_be_returned = 'f'
INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('table', 124.00, 'f');

-- 4. Displaying all of the rows and columns
SELECT * FROM products;

-- 5. Displaying all of the names of the products
SELECT name FROM products;

-- 6. Display all of the names and prices of the products
SELECT name, price FROM products;

-- 7. Add a new product
INSERT INTO products
    (name, price, can_be_returned)
VALUES('desk', 99.99, 'f');

-- 8. Display only the products that can be returned
SELECT can_be_returned FROM products WHERE can_be_returned  = 't';                                              ;

-- 9. Display only the products that have a price less than 44.00
SELECT name, price FROM products WHERE price < 44.00;

--10. Display only the products that have a price in between 22.50 and 99.99
SELECT name, price FROM products WHERE price BETWEEN 22.50 AND 99.99;

--11. There is a sale going on: Everything is $20 off! Update the database accordingly;
UPDATE products SET price = price - 20;

--12 Because of this sale, everything that costs less than $25 has sold out. Remove all products whose price
--meets this criteria.
DELETE FROM products WHERE price < 25;

--13. And now the sale is over. For the remaining products, increase their price by $20.
UPDATE products SET price = price + 20;

-- 14. There is a new company policy: everything is returnable. Update the database accordingly.
UPDATE products SET can_be_returned = 't';

