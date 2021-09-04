use OnlineShopping

Select * from Categories;
Select * from Customer;
Select * from Deliveries;
Select * from Payment ;
Select * from Products;
Select * from Seller;
Select * from ShoppingOrder;
Select * from TransactionReport;
Select * from MergeCustomer;

--SELECT,COUNT, INNER JOIN,GROUP BY, HAVING, ORDER BY
SELECT 
	cust_name,
	COUNT(*) No_Of_orders
FROM 
	Customer c
	INNER JOIN ShoppingOrder s ON s.customer_id=c.customer_id
GROUP BY cust_name
HAVING COUNT(*) >= 2
ORDER BY  No_Of_orders;

--Subquery, IN
SELECT
	c.customer_id,
    cust_name ,
	order_Date
FROM
    Customer c
	INNER JOIN ShoppingOrder s ON s.customer_id = c.customer_id
WHERE
    c.customer_id IN (
        SELECT
            customer_id
        FROM
            Customer
        WHERE
            address = 'Nashik Road'
    )
ORDER BY
    order_Date DESC;

--MERGE
MERGE MergeCustomer m
    USING Customer c
ON (c.customer_id = m.customer_id)
WHEN MATCHED
    THEN UPDATE SET 
		m.customer_id=c.customer_id,
		m.cust_name = c.cust_name,
        m.contact_add=c.contact_add,
		m.address=c.address
WHEN NOT MATCHED BY TARGET 
    THEN INSERT (customer_id, cust_name,contact_add, address)
         VALUES (c.customer_id, c.cust_name, c.contact_add, c.address)
WHEN NOT MATCHED BY SOURCE 
    THEN DELETE;

--View
CREATE VIEW ProductInfo
AS
SELECT
   category_type,product_name,seller_name
FROM
    Categories  AS c
INNER JOIN Products  AS p
    ON p.category_id  = c.category_id
INNER JOIN Seller  AS s
    ON s.product_id = p.product_id

select * from ProductInfo;

SELECT seller_name
FROM ProductInfo
WHERE category_type= 'Clothing';

--TRIGGER
CREATE TRIGGER trg_customer_audit
ON Customer
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO customer_audit( 
        cust_name,
        contact_add,
        address,
        updated_at, 
        operation
    )
    SELECT
        i.cust_name,
        contact_add,
        i.address,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT 
        d.cust_name,
        contact_add,
        d.address,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END

INSERT INTO Customer (cust_name,contact_add,address) VALUES('Mrun Solapure',9779545778,'Indira Nagar');
DELETE FROM Customer WHERE customer_id=10;

--Stored procedure
CREATE PROCEDURE uspFindOrderDetails(
    @date1 AS DATE,
	@date2 AS DATE
)
AS
BEGIN
    SELECT
		cust_name
    FROM 
        Customer c
		INNER JOIN ShoppingOrder s
		ON s.customer_id = c.customer_id
    WHERE
        order_Date BETWEEN @date1 AND @date2 
END;

EXEC uspFindOrderDetails '2020/12/18','2021/06/01';


