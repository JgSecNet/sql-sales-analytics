PRAGMA foreign_keys = ON;

CREATE TABLE customers (customer_id INTEGER PRIMARY KEY,
full_name TEXT,
email TEXT, 
Signup_date DATE);

create table products (product_id integer primary key, 
product_name TEXT, 
category TEXT, 
price REAL);


create TABLE orders (order_id integer primary key, 
customer_id integer,
order_date DATE,
payment_method TEXT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
);

create TABLE order_items (
order_item_id integer primary key,
order_id integer,
product_id integer,
quantity integer,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);