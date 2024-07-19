-- Customers table--

CREATE TABLE SP_MEDICALS_CUSTOMERS (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    zip_code VARCHAR(20),
    phone_number VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO SP_MEDICALS_CUSTOMERS (customer_id, first_name, last_name, date_of_birth, address, city, state, zip_code, phone_number, email)
VALUES
(1, 'John', 'Doe', '1990-05-15', '123 Main St', 'Anytown', 'CA', '12345', '555-123-4567', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '1985-12-10', '456 Elm St', 'Smallville', 'NY', '54321', '555-987-6543', 'jane.smith@example.com'),
(3, 'Michael', 'Johnson', '1982-08-25', '789 Oak St', 'Metro City', 'TX', '67890', '555-567-8901', 'michael.johnson@example.com'),
(4, 'Emily', 'Brown', '1995-04-30', '101 Pine Ave', 'Village Heights', 'FL', '45678', '555-234-5678', 'emily.brown@example.com'),
(5, 'David', 'Williams', '1988-11-12', '222 Cedar Ln', 'Riverdale', 'GA', '23456', '555-876-5432', 'david.williams@example.com'),
(6, 'Sarah', 'Jones', '1993-03-20', '333 Birch Rd', 'Hillside', 'NC', '98765', '555-345-6789', 'sarah.jones@example.com'),
(7, 'James', 'Garcia', '1979-09-05', '444 Maple Blvd', 'Sunset City', 'AZ', '34567', '555-654-3210', 'james.garcia@example.com'),
(8, 'Lisa', 'Martinez', '1980-07-18', '555 Pineapple Ave', 'Oceanview', 'CA', '54321', '555-789-0123', 'lisa.martinez@example.com'),
(9, 'Daniel', 'Robinson', '1991-01-28', '666 Olive St', 'Green Valley', 'NV', '87654', '555-432-1098', 'daniel.robinson@example.com'),
(10, 'Jessica', 'Lee', '1987-06-14', '777 Walnut Dr', 'Mountainside', 'WA', '76543', '555-210-9876', 'jessica.lee@example.com'),
(11, 'Christopher', 'Walker', '1983-02-08', '888 Cherry Ln', 'Lakeview', 'OR', '23451', '555-901-2345', 'christopher.walker@example.com'),
(12, 'Amanda', 'Lopez', '1994-08-03', '999 Pear St', 'Valley Ridge', 'CO', '87612', '555-543-2109', 'amanda.lopez@example.com'),
(13, 'Matthew', 'Hernandez', '1986-12-19', '111 Plum Rd', 'Riverside', 'UT', '54321', '555-678-9012', 'matthew.hernandez@example.com'),
(14, 'Ashley', 'Scott', '1990-10-22', '222 Mango Ave', 'Harbor Town', 'HI', '76543', '555-890-1234', 'ashley.scott@example.com'),
(15, 'Andrew', 'Green', '1981-05-09', '333 Avocado Blvd', 'Hillcrest', 'NM', '12345', '555-012-3456', 'andrew.green@example.com'),
(16, 'Stephanie', 'Adams', '1993-07-17', '444 Banana Dr', 'Sunset Beach', 'FL', '67890', '555-234-5678', 'stephanie.adams@example.com'),
(17, 'Ryan', 'Thomas', '1984-09-04', '555 Orange St', 'Seaside', 'CA', '45678', '555-456-7890', 'ryan.thomas@example.com'),
(18, 'Nicole', 'Baker', '1989-03-15', '666 Grape Ln', 'Mountain View', 'NV', '98765', '555-567-8901', 'nicole.baker@example.com'),
(19, 'Kevin', 'Gonzalez', '1980-11-23', '777 Peach Rd', 'Ocean City', 'MD', '23456', '555-678-9012', 'kevin.gonzalez@example.com'),
(20, 'Megan', 'Young', '1992-04-10', '888 Kiwi Blvd', 'Lakeview Park', 'WA', '87654', '555-789-0123', 'megan.young@example.com'),
(21, 'Timothy', 'Evans', '1978-06-27', '999 Lemon Ave', 'Valley Springs', 'OR', '54321', '555-890-1234', 'timothy.evans@example.com'),
(22, 'Rachel', 'Morales', '1987-08-14', '111 Apple St', 'Rivertown', 'CO', '23451', '555-901-2345', 'rachel.morales@example.com'),
(23, 'Brandon', 'King', '1996-01-30', '222 Cherry Ln', 'Harbor Bay', 'HI', '87612', '555-012-3456', 'brandon.king@example.com'),
(24, 'Heather', 'Wright', '1983-10-25', '333 Pineapple Dr', 'Hilltop', 'NM', '54321', '555-123-4567', 'heather.wright@example.com'),
(25, 'Jason', 'Perez', '1990-07-12', '444 Banana Rd', 'Sunset View', 'FL', '23456', '555-234-5678', 'jason.perez@example.com'),
(26, 'Samantha', 'Torres', '1986-05-18', '555 Orange Ave', 'Seaview', 'CA', '67890', '555-345-6789', 'samantha.torres@example.com'),
(27, 'Eric', 'Sanchez', '1991-12-03', '666 Mango St', 'Mountain Ridge', 'NV', '45678', '555-456-7890', 'eric.sanchez@example.com'),
(28, 'Maria', 'Flores', '1980-04-20', '777 Avocado Dr', 'Ocean Ridge', 'WA', '78901', '555-567-8901', 'maria.flores@example.com'),
(29, 'Justin', 'Rivera', '1993-09-15', '888 Pear Rd', 'Lake Valley', 'OR', '56789', '555-678-9012', 'justin.rivera@example.com'),
(30, 'Christina', 'Nguyen', '1985-02-08', '999 Plum Ave', 'Valley View', 'CO', '89012', '555-789-0123', 'christina.nguyen@example.com');


-- Products purchased table--

CREATE TABLE SP_PRODUCTS_PURCHASED (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    purchase_date DATE,
	Amount_purchased int,
    FOREIGN KEY (customer_id) REFERENCES AK_MEDICALS_CUSTOMERS(customer_id)
	on update cascade
	on delete cascade
);

INSERT INTO SP_PRODUCTS_PURCHASED (purchase_id, customer_id, product_name, purchase_date,Amount_purchased)
VALUES
(1, 1, 'Pain Relief Cream', '2024-01-15',5000),
(2, 2, 'Antibiotic Ointment', '2024-02-20',300),
(3, 3, 'Cold and Flu Tablets', '2024-03-25',4700),
(4, 4, 'Allergy Relief Spray', '2024-04-10',5500),
(5, 5, 'First Aid Kit', '2024-05-05',550),
(6, 6, 'Sleep Aid Capsules', '2024-06-12',280),
(7, 7, 'Vitamin C Supplements', '2024-07-20',1500),
(8, 8, 'Digestive Enzymes', '2024-08-08',3300),
(9, 9, 'Pain Relief Gel', '2024-09-14',1100),
(10, 10, 'Antiseptic Solution', '2024-10-22',7000),
(11, 11, 'Cough Syrup', '2024-11-30',880),
(12, 12, 'Joint Support Capsules', '2024-12-05',11100),
(13, 13, 'Muscle Relaxant Cream', '2024-01-18',14000),
(14, 14, 'Probiotic Supplements', '2024-02-25',70),
(15, 15, 'Eye Drops', '2024-03-30',620),
(16, 16, 'Skin Moisturizer', '2024-04-15',400),
(17, 17, 'Omega-3 Fish Oil', '2024-05-08',7700),
(18, 18, 'Multivitamin Tablets', '2024-06-10',10300),
(19, 19, 'Fiber Supplements', '2024-07-18',6900),
(20, 20, 'Allergy Relief Tablets', '2024-08-25',7000),
(21, 21, 'Herbal Tea', '2024-09-30',30),
(22, 22, 'Immune Support Capsules', '2024-10-10',507),
(23, 23, 'Weight Management Shake', '2024-11-12',15005),
(24, 24, 'Hair Growth Formula', '2024-12-20',200),
(25, 25, 'Antioxidant Serum', '2024-01-28',500),
(26, 26, 'Aloe Vera Gel', '2024-02-14',4890);

-- Create the products stock details--

CREATE TABLE SP_MEDICALS_PRODUCTS_STOCK (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100),
    unit_price DECIMAL(10, 2),
    stock_quantity INT DEFAULT 0,
    expiry_date DATE
);


INSERT INTO SP_MEDICALS_PRODUCTS_STOCK (product_id, product_name, manufacturer, unit_price, stock_quantity, expiry_date)
VALUES
(1, 'Pain Relief Cream', 'AK Medicals Inc.', 9.99, 100, '2024-08-01'),
(2, 'Antibiotic Ointment', 'AK Medicals Inc.', 7.50, 150, '2024-09-01'),
(3, 'Cold and Flu Tablets', 'AK Medicals Inc.', 12.49, 200, '2024-10-01'),
(4, 'Allergy Relief Spray', 'AK Medicals Inc.', 15.99, 75, '2024-11-01'),
(5, 'First Aid Kit', 'AK Medicals Inc.', 29.99, 50, '2024-12-01'),
(6, 'Sleep Aid Capsules', 'AK Medicals Inc.', 19.99, 120, '2025-01-01'),
(7, 'Vitamin C Supplements', 'AK Medicals Inc.', 8.99, 180, '2025-02-01'),
(8, 'Digestive Enzymes', 'AK Medicals Inc.', 14.50, 90, '2025-03-01'),
(9, 'Pain Relief Gel', 'AK Medicals Inc.', 12.99, 110, '2025-04-01'),
(10, 'Antiseptic Solution', 'AK Medicals Inc.', 6.75, 250, '2025-05-01'),
(11, 'Cough Syrup', 'AK Medicals Inc.', 11.25, 80, '2025-06-01'),
(12, 'Joint Support Capsules', 'AK Medicals Inc.', 24.99, 100, '2025-07-01'),
(13, 'Burn Relief Spray', 'AK Medicals Inc.', 18.75, 60, '2025-08-01'),
(14, 'Eye Drops', 'AK Medicals Inc.', 9.49, 150, '2025-09-01'),
(15, 'Bandages', 'AK Medicals Inc.', 5.99, 300, '2025-10-01'),
(16, 'Sunscreen Lotion', 'AK Medicals Inc.', 13.99, 200, '2025-11-01'),
(17, 'Anti-itch Cream', 'AK Medicals Inc.', 7.99, 120, '2025-12-01'),
(18, 'Nasal Spray', 'AK Medicals Inc.', 11.99, 100, '2026-01-01'),
(19, 'Motion Sickness Tablets', 'AK Medicals Inc.', 16.49, 80, '2026-02-01'),
(20, 'Foot Care Cream', 'AK Medicals Inc.', 8.99, 150, '2026-03-01'),
(21, 'Multivitamin Tablets', 'AK Medicals Inc.', 22.50, 100, '2026-04-01'),
(22, 'Wound Dressing Kit', 'AK Medicals Inc.', 32.99, 40, '2026-05-01'),
(23, 'Ear Drops', 'AK Medicals Inc.', 14.99, 90, '2026-06-01'),
(24, 'Calamine Lotion', 'AK Medicals Inc.', 10.25, 120, '2026-07-01'),
(25, 'Hand Sanitizer Gel', 'AK Medicals Inc.', 6.99, 200, '2026-08-01'),
(26, 'Allergy Relief Tablets', 'AK Medicals Inc.', 17.99, 80, '2026-09-01'),
(27, 'Stomach Relief Syrup', 'AK Medicals Inc.', 13.75, 100, '2026-10-01'),
(28, 'Eye Wash Solution', 'AK Medicals Inc.', 11.49, 70, '2026-11-01'),
(29, 'Burn Relief Gel', 'AK Medicals Inc.', 21.99, 50, '2026-12-01'),
(30, 'Insect Bite Cream', 'AK Medicals Inc.', 9.99, 120, '2027-01-01'),
(31, 'Sleep Mask', 'AK Medicals Inc.', 12.99, 80, '2027-02-01'),
(32, 'Cotton Swabs', 'AK Medicals Inc.', 4.49, 250, '2027-03-01'),
(33, 'Hemorrhoid Cream', 'AK Medicals Inc.', 15.25, 60, '2027-04-01'),
(34, 'Headache Relief Tablets', 'AK Medicals Inc.', 9.99, 150, '2027-05-01'),
(35, 'Nausea Relief Tablets', 'AK Medicals Inc.', 14.50, 100, '2027-06-01');

-- Create the table for product orders---
CREATE TABLE SP_MEDICALS_PRODUCTS_ORDERS (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES CK_MEDICALS_CUSTOMERS(customer_id)
	on update cascade
	on delete cascade,
    FOREIGN KEY (product_id) REFERENCES CK_MEDICALS_PRODUCTS_STOCK(product_id)
	on update cascade
	on delete cascade
);



-- Insert 10 sample orders---
INSERT INTO SP_MEDICALS_PRODUCTS_ORDERS (order_id, customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 1, 2, '2024-01-15'),
(2, 2, 2, 1, '2024-02-20'),
(3, 3, 3, 3, '2024-03-25'),
(4, 4, 4, 1, '2024-04-10'),
(5, 5, 5, 2, '2024-05-05'),
(6, 6, 6, 1, '2024-01-12'),
(7, 7, 7, 4, '2024-03-20'),
(8, 8, 8, 2, '2024-03-08'),
(9, 9, 9, 3, '2024-05-14'),
(10, 10, 10, 1, '2024-04-22');

-- Create table for payments related to orders in CK_MEDICALS_PRODUCTS_ORDERS--

CREATE TABLE SP_MEDICALS_PAYMENTS (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    order_id INT,
    amount_paid DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(50),
    remarks VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES CK_MEDICALS_CUSTOMERS(customer_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION, 
    FOREIGN KEY (order_id) REFERENCES CK_MEDICALS_PRODUCTS_ORDERS(order_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- Insert 10 sample payments associated with different orders--
INSERT INTO SP_MEDICALS_PAYMENTS (payment_id, customer_id, order_id, amount_paid, payment_date, payment_method, remarks)
VALUES
(1, 1, 1, 350.00, '2024-07-02', 'Credit Card', 'Paid in full'),
(2, 2, 2, 200.00, '2024-07-06', 'Cash', 'Paid in full'),
(3, 3, 3, 100.00, '2024-07-10', 'Credit Card', 'Partial payment'),
(4, 4, 4, 50.00, '2024-07-12', 'Cash', 'Partial payment'),
(5, 5, 5, 300.00, '2024-07-15', 'Credit Card', 'Paid in full'),
(6, 6, 6, 150.00, '2024-07-18', 'Credit Card', 'Paid partially'),
(7, 7, 7, 400.00, '2024-07-20', 'Bank Transfer', 'Paid in full'),
(8, 8, 8, 250.00, '2024-07-25', 'Cash', 'Paid partially'),
(9, 9, 9, 200.00, '2024-07-28', 'Credit Card', 'Paid in full'),
(10, 10, 10, 100.00, '2024-07-30', 'Cash', 'Paid in full');

select * from SP_MEDICALS_CUSTOMERS;
select * from SP_PRODUCTS_PURCHASED;
select * from SP_MEDICALS_PRODUCTS_STOCK;
select * from SP_MEDICALS_PRODUCTS_ORDERS;
select * from SP_MEDICALS_PAYMENTS;

----JOIN QUERY----

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.date_of_birth,
    c.address,
    c.city,
    c.state,
    c.zip_code,
    c.phone_number,
    c.email,
    p.purchase_id,
    p.product_name AS purchased_product_name,
    p.purchase_date,
    ps.product_id,
    ps.product_name AS stock_product_name,
    ps.manufacturer,
    ps.unit_price,
    ps.stock_quantity,
    ps.expiry_date,
    po.order_id,
    po.quantity AS ordered_quantity,
    po.order_date,
    py.payment_id,
    py.amount_paid,
    py.payment_date,
    py.payment_method,
    py.remarks
FROM
    SP_MEDICALS_CUSTOMERS c
LEFT JOIN
    SP_PRODUCTS_PURCHASED p ON c.customer_id = p.customer_id
LEFT JOIN
    SP_MEDICALS_PRODUCTS_STOCK ps ON p.product_name = ps.product_name
LEFT JOIN
    SP_MEDICALS_PRODUCTS_ORDERS po ON c.customer_id = po.customer_id
LEFT JOIN
    SP_MEDICALS_PAYMENTS py ON po.order_id = py.order_id;


	
-------------------using Group By/Order By-----------
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount_paid) AS total_amount_paid
FROM
    SP_MEDICALS_CUSTOMERS c
JOIN
    SP_MEDICALS_PAYMENTS p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id, c.first_name, c.last_name
ORDER BY
    c.customer_id;


--- using aggregate function -COUNT ---
SELECT
    customer_id,
    COUNT(*) AS total_purchases
FROM SP_MEDICALS_PAYMENTS
WHERE payment_method = 'Credit Card'
GROUP BY customer_id;

--- using aggregate function -MAX ---

SELECT
    customer_id,
    MAX(purchase_date) AS latest_purchase_date
FROM SP_PRODUCTS_PURCHASED
GROUP BY customer_id;

---Common Table Expression---

WITH CoughSyrupinfo AS (
    SELECT
        product_id,
        product_name,
        manufacturer,
        unit_price,
        stock_quantity,
        expiry_date
    FROM SP_MEDICALS_PRODUCTS_STOCK
    WHERE product_name LIKE '%cough syrup%'
)
SELECT *
FROM CoughSyrupinfo;


-- Query using CASE with pivot to summarize orders by month---
SELECT
    product_id,
    SUM(CASE WHEN MONTH(order_date) = 1 THEN quantity ELSE 0 END) AS January,
    SUM(CASE WHEN MONTH(order_date) = 2 THEN quantity ELSE 0 END) AS February,
    SUM(CASE WHEN MONTH(order_date) = 3 THEN quantity ELSE 0 END) AS March,
	SUM(CASE WHEN MONTH(order_date) = 3 THEN quantity ELSE 0 END) AS April,
	SUM(CASE WHEN MONTH(order_date) = 3 THEN quantity ELSE 0 END) AS May
FROM SP_MEDICALS_PRODUCTS_ORDERS
GROUP BY product_id;


---Retriving NULL---
SELECT  
   c.customer_id,
   c.first_name,
   c.last_name

FROM 
   SP_MEDICALS_CUSTOMERS c
LEFT JOIN CK_MEDICALS_PRODUCTS_ORDERS o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;


---Stored procedure---


CREATE OR ALTER PROCEDURE SP_GetordersdetailsS
         @customer_id INT
As
BEGIN
    SELECT 
        order_id,
        customer_id,
        SP_MEDICALS_PRODUCTS_ORDERS.product_id,
        product_name,
        quantity,
        order_date
    FROM 
        SP_MEDICALS_PRODUCTS_ORDERS 
    INNER JOIN 
        SP_MEDICALS_PRODUCTS_STOCK  ON SP_MEDICALS_PRODUCTS_ORDERS.product_id = SP_MEDICALS_PRODUCTS_STOCK.product_id
    WHERE 
        customer_id = @customer_id;
END 

Exec SP_GetordersdetailsS 3;

---Retrieve Orders Within a Specific Date Range----

SELECT
    order_id ,
    customer_id ,
    product_id ,
    quantity ,
    order_date
FROM
    SP_MEDICALS_PRODUCTS_ORDERS
WHERE
    Order_date BETWEEN '2024-01-12' AND '2024-03-25'
ORDER BY
    Order_date DESC;

---window functions---

--select *,rank() over(order by amount_purchased desc) from SP_PRODUCTS_PURCHASED--

WITH RankedProducts AS (
    SELECT 
        *,
        RANK() OVER (ORDER BY amount_purchased DESC) AS purchase_rank
    FROM 
        SP_PRODUCTS_PURCHASED
)

SELECT 
    *
FROM 
    RankedProducts
WHERE 
    amount_purchased > 10000;

---Running total---

select *,sum(amount_paid) over (order by customer_id ) as [running total] from SP_MEDICALS_PAYMENTS;

---Apply discounts to those purchased more than 10000---
SELECT 
    customer_id,
    product_name,
    purchase_date,
    amount_purchased,
    CASE 
        WHEN amount_purchased > 10000 THEN amount_purchased * 0.9
        ELSE amount_purchased
    END AS discounted_amount
FROM 
    SP_PRODUCTS_PURCHASED;





	












