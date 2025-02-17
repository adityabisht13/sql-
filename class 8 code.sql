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

--full outer join -- ismei donoh table ka data aayga pura
--donoh sarre ayenge pr table aaygi right koh dekh kar uskei according data lega order mei

select * from  customers
full outer join orders
on customers.customerid=orders.customerid


--cross join -- ismei donoh table ka data aayga pura
--ismei left kei sbh row fir right 1 row aissi jbh tk sarre right kei row khatam na hoh jye

select * from  customers
cross join orders     --ismei on lagane ki jarwat nhi hei

select * from customers ,orders --secondd method of cross join


--natural join(tbhi lgega jbh primary key or foreign key ka naam same hona chaiye)
--natural join and inner join are similar
--table aaygi right koh dekh kar uskei according data lega order mei

select * from  customers
natural join orders


--self join--

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
	salary Bigint
);

INSERT INTO employees (emp_id, emp_name, manager_id,salary) VALUES 
(1, 'Alice', NULL,100000),
(2, 'Bob', 1,400000),
(3, 'Charlie', 1,200000),
(4, 'David', 2,100000),
(5, 'Eve', 2,400000);

drop table employees


create view employee_table as(
select e2.emp_name as employe from employees as e1  
inner join employees as e2  --self mei sbh lga skhte inner ,left etc
on e1.emp_id=e2.manager_id
where e2.salary > e1.salary)


