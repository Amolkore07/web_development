show databases;
-- 1. Assume you have a Sales table with SaleID, ProductID, and SaleAmount. Create a view that  
-- -- calculates the total sales for each ProductID. Then, attempt to update the base table (Sales) using  
-- -- the view.  
-- -- Sales Table:  
-- -- o SaleID (Primary Key)  
-- -- o ProductID  
-- -- o SaleAmount -- 	
	
    create database practical1;
    use practical1;
    create table sales(
    saleID int auto_increment primary key,
    productID int unique,
    sale_amount float NOT NULL);
    
    select * from sales;
    insert into sales ( saleID, productID, sale_amount) values
    ('1', '20','2000'),
     ('2', '21','3000'),
      ('3', '22','5000'),
       ('4', '23','6000'),
        ('5', '24','7000'),
        ('6', '25','100000');
    drop view total_sales;
    create view total_sales AS 
    SELECT  productID, sum(sale_amount) AS total_amount
    FROM sales
    GROUP BY ProductID;
    select * from total_sales;
    update sales 
    set sale_amount=5000
    where saleID=5;
    

