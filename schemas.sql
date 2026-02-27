DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS riders;

--2. Creating Tables
CREATE TABLE restaurants (
restaurant_id SERIAL PRIMARY KEY,
restaurant_name VARCHAR(100) NOT NULL,
city VARCHAR(50),
opening_hours VARCHAR(50)
);

CREATE TABLE customers (
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
reg_date DATE
);

CREATE TABLE riders (
rider_id SERIAL PRIMARY KEY,
rider_name VARCHAR(100) NOT NULL,
sign_up DATE
);

CREATE TABLE Orders (
order_id SERIAL PRIMARY HRY
customer_id INT,
restaurant_id INT,
order_item VARCHAR(255),
order_date DATE NOT NULL,
order_time TIME NOT NULL,
order_status VARCHAR(20) DEFAULT 'Pending',
total_amount DECIMAL(10, 2) NOT NULL,
FOREION KEY (customer_id) REFERENCES customers(customer_id),
FOREION KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

CREATE TABLE deliveries (
delivery_id SERIAL PRIMARY KEY,
order_id INT,
delivery_status VARCHAR(20) DEFAULT 'Pending',
delivery_time TIME,
rider_id INT,
FOREION KEY (order_id) REFERENCES Orders(order_id),
FORETON KEY (rider_id) REFERENCES riders(rider_id)
};
