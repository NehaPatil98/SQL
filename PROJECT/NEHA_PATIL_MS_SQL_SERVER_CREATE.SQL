use OnlineShopping

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    cust_name VARCHAR (255) NOT NULL,
    contact_add INT NOT NULL,
    address VARCHAR(max),
);

--for trigger
CREATE TABLE customer_audit (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    cust_name VARCHAR (255) NOT NULL,
    contact_add VARCHAR(10) NOT NULL,
    address VARCHAR(max),
	updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL')
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY IDENTITY(1,1),
    category_type VARCHAR (255) NOT NULL
);

--for merge
CREATE TABLE MergeCustomer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR (255) NOT NULL,
    contact_add VARCHAR(10) NOT NULL,
    address VARCHAR(max),
);

CREATE TABLE ShoppingOrder (
    order_id INT PRIMARY KEY IDENTITY(1,1) ,
    order_Date DATE NOT NULL,
	customer_id INT FOREIGN KEY REFERENCES Customer(customer_id)
);

CREATE TABLE Deliveries (
    account_id INT PRIMARY KEY IDENTITY(1,1),
	delivery_Date DATE NOT NULL,
	customer_id INT FOREIGN KEY REFERENCES Customer(customer_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY IDENTITY(1,1),
	product_name VARCHAR (255) NOT NULL,
	category_id INT FOREIGN KEY REFERENCES Categories(category_id)
);

CREATE TABLE Seller (
    seller_id INT PRIMARY KEY IDENTITY(1,1),
	seller_name VARCHAR (255) NOT NULL,
	product_id INT FOREIGN KEY REFERENCES Products(product_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY IDENTITY(1,1),
	payment_date DATE NOT NULL,
	customer_id INT FOREIGN KEY REFERENCES Customer(customer_id)
);

CREATE TABLE TransactionReport (
    report_id INT PRIMARY KEY IDENTITY(1,1),
	customer_id INT FOREIGN KEY REFERENCES Customer(customer_id),
	order_id INT FOREIGN KEY REFERENCES ShoppingOrder(order_id),
	product_id INT FOREIGN KEY REFERENCES Products(product_id),
	payment_id INT FOREIGN KEY REFERENCES Payment(payment_id),	
);

