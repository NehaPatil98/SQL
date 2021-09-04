--Customer Table
INSERT INTO Customer (cust_name,contact_add,address) VALUES ('Neha Patil',9876545678,'Nashik Road');
INSERT INTO Customer (cust_name,contact_add,address) VALUES('Niyati Patel',9776545678,'Nashik Road');
INSERT INTO Customer (cust_name,contact_add,address) VALUES('Devesh Jha',9776549978,'Satpur');
INSERT INTO Customer (cust_name,contact_add,address) VALUES('Prajakta Dhatrak',9776876678,'Jail Road');
INSERT INTO Customer (cust_name,contact_add,address) VALUES('Suchit Koli',9776545678,'DGP Nagar');
INSERT INTO Customer (cust_name,contact_add,address) VALUES('Amit Sharma',9779545678,'Tidke Colony');

--for Merge
INSERT INTO MergeCustomer(customer_id,cust_name,contact_add,address) VALUES(8,'Neha Patil',9876545678,'Nashik Road');
INSERT INTO MergeCustomer(customer_id,cust_name,contact_add,address) VALUES(9,'Niyati Patel',9776545678,'Nashik Road');
INSERT INTO MergeCustomer(customer_id,cust_name,contact_add,address) VALUES(10,'Devesh Jha',9776549978,'Satpur');
INSERT INTO MergeCustomer(customer_id,cust_name,contact_add,address) VALUES(11,'Prajakta Dhatrak',9999999999,'Jail Road');
INSERT INTO MergeCustomer(customer_id,cust_name,contact_add,address) VALUES(12,'Suchit Koli',8888888888,'DGP Nagar');
INSERT INTO MergeCustomer(customer_id,cust_name,contact_add,address) VALUES(14,'Sakshi Hinge',9779545978,'Indira Nagar');

--Categories Table
INSERT INTO Categories (category_type ) VALUES('Clothing');
INSERT INTO Categories (category_type ) VALUES('Footwear');
INSERT INTO Categories (category_type ) VALUES('Accessories');

--Deliveries Table
INSERT INTO Deliveries(delivery_Date,customer_id ) VALUES('2021/03/12',8);
INSERT INTO Deliveries(delivery_Date,customer_id ) VALUES('2020/12/22',8);
INSERT INTO Deliveries(delivery_Date,customer_id ) VALUES('2021/03/12',9);
INSERT INTO Deliveries(delivery_Date,customer_id ) VALUES('2021/03/12',12);
INSERT INTO Deliveries(delivery_Date,customer_id ) VALUES('2019/09/07',11);
INSERT INTO Deliveries(delivery_Date,customer_id ) VALUES('2020/05/09',13);

--Payment Table
INSERT INTO Payment(payment_date,customer_id ) VALUES('2020/05/09',13);
INSERT INTO Payment(payment_date,customer_id ) VALUES('2021/03/08',8);
INSERT INTO Payment(payment_date,customer_id ) VALUES('2019/09/02',11);
INSERT INTO Payment(payment_date,customer_id ) VALUES('2020/05/09',10);
INSERT INTO Payment(payment_date,customer_id ) VALUES('2021/07/22',9);
INSERT INTO Payment(payment_date,customer_id ) VALUES('2020/05/12',12);

--Products Table
INSERT INTO Products(product_name ,category_id  ) VALUES('Jeans',1);
INSERT INTO Products(product_name ,category_id  ) VALUES('Shirts',1);
INSERT INTO Products(product_name ,category_id  ) VALUES('Top',1);
INSERT INTO Products(product_name ,category_id  ) VALUES('Dresses',1);
INSERT INTO Products(product_name ,category_id  ) VALUES('Shoes',2);
INSERT INTO Products(product_name ,category_id  ) VALUES('FlipFlop',2);
INSERT INTO Products(product_name ,category_id  ) VALUES('Sandals',2);
INSERT INTO Products(product_name ,category_id  ) VALUES('Slippers',2);
INSERT INTO Products(product_name ,category_id  ) VALUES('Belt',3);
INSERT INTO Products(product_name ,category_id  ) VALUES('Hairband',3);
INSERT INTO Products(product_name ,category_id  ) VALUES('Watches',3);
INSERT INTO Products(product_name ,category_id  ) VALUES('Sunglasses',3);

--Seller Table
INSERT INTO Seller(seller_name ,product_id   ) VALUES('The Bit Group',1);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('The Bit Group',2);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('The Bit Group',6);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Farma Packs',3);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Anchor Direct',4);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Zepos Retail',5);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Zepos Retail',10);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Square Trade',8);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Square Trade',9);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Farma Packs',7);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Sarsa',11);
INSERT INTO Seller(seller_name ,product_id   ) VALUES('Sarsa',12);

--ShoppingOrder Table
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2021/03/06',8);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2020/12/18',8);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2021/03/08',9);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2021/03/09',12);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2019/09/02',11);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2020/05/04',13);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2021/06/01',13);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2020/08/15',13);
INSERT INTO ShoppingOrder (order_Date ,customer_id  ) VALUES('2020/12/13',11);

--TransactionReport Table
INSERT INTO TransactionReport (customer_id,order_id ,product_id ,payment_id ) VALUES(8,1,3,2);
INSERT INTO TransactionReport (customer_id,order_id ,product_id ,payment_id ) VALUES(9,3,7,5);
INSERT INTO TransactionReport (customer_id,order_id ,product_id ,payment_id ) VALUES(12,4,5,6);
INSERT INTO TransactionReport (customer_id,order_id ,product_id ,payment_id ) VALUES(11,5,9,3);
INSERT INTO TransactionReport (customer_id,order_id ,product_id ,payment_id ) VALUES(13,6,10,1);



