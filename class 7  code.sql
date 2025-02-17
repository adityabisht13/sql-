-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50)
);

-- Insert Values into Customers Table
INSERT INTO Customers (CustomerID, Name, Email, City) VALUES
(1, 'John Doe', 'john@example.com', 'New York'),
(2, 'Jane Smith', 'jane@example.com', 'Los Angeles'),
(3, 'Mike Johnson', 'mike@example.com', 'Chicago'),

(4, 'Emily Davis', 'emily@example.com', 'Houston');

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID ) REFERENCES Customers(CustomerID) --foreign key kei liye reference dena pdhta hei
);

-- Insert Values into Orders Table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2024-02-01', 250.75),
(102, 2, '2024-02-05', 100.50),

(103, 1, '2024-02-10', 450.25),
(104, 3, '2024-02-15', 300.00);

select * from Customers;
select * from Orders;
--case--
select count(case when name='John Doe' then city end)as city_count  --as bhi likh skhte nhi bhi likh skhte tbh bhi chlega
from Customers

-- this is for another table and example of case
select COUNT(case when name='DA' then salary end) da_sal_COUNT,
sum(case when dep='DA' then salary else 0 end) da_sal,
COUNT(case when dep='AI' then salary end) AI_sal_COUNT,
sum(case when dep='AI' then salary else 0 end ) ai_sal,
COUNT(case when dep='ML' then salary end) ML_sal_COUNT,
sum(case when dep='ML' then salary else 0 end ) ML_sal
from window1


--- target columns ---
  
select Amount ,    -- , is imp warna nhi chlega
case  when Amount<300 then 'not good'
when Amount>=300 and amount <400 then 'thik thak'
else 'nice work'
end as status 
from Orders 


---- filter method ---

select 
sum(amount) filter(where orderid IN (101,102)) AS order_amount
from orders


--innner join--  --right table mei honge woh sarre left se dhundega fir
select * from  customers
inner join orders
--on customers.customerid=orders.customerid
using (customerid)  --isse common customerid 1 bar aaygi parr name same hona chaiye donoh table mei



--left join-- left walle sarre ayenge pr table aaygi right koh dekh kar uskei according data lega order mei
select * from  customers
left join orders
on customers.customerid=orders.customerid

--right join--right walle sarre ayenge pr table aaygi right koh dekh kar uskei according data lega order mei

select * from  customers
right join orders
on customers.customerid=orders.customerid


 