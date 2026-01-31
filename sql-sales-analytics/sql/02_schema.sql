INSERT INTO customers VALUES
(1, 'Jaylen Glenn' , 'jaylen@email.com', '2024-01-05'),
(2, 'Mia Torres' , 'mia@email.com' , '2024-02-10'),
(3, 'Chris Patel' , 'chris@email.com' , '2024-02-20'),
(4, 'Ava Nguyen' , 'ava@email.com' , '2024-03-01');


INSERT INTO products VALUES
(1, 'laptop' ,'Electronics' , 1200)
(2, 'Headphones' 'Electronics' , 200),
(3, 'Office Chair' , 'Furniture' , 350),
(4, 'Standing Desk' , 'Furniture' , 600);

INSERT INTO orders VALUES
(101, 1, '2024-03-05', 'Card'),
(102, 2, '2024-03-10', 'PayPal'),
(103, 1, '2024-03-20', 'Card'),
(104, 3, '2024-04-01', 'Card');

INSERT INTO order_items VALUES
(1, 101, 1, 1),
(2, 101, 2, 2),
(3, 102, 4, 1),
(4, 103, 2, 1),
(5, 103, 3, 1),
(6, 104, 1, 1);
