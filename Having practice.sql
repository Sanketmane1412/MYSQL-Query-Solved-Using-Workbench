CREATE DATABASE MAYUR_1;
USE MAYUR_1;
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    employee_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    budget INT,
    duration_months INT,
    status VARCHAR(20)
);
INSERT INTO projects VALUES
(1, 'AI System', 'Sanket', 'IT', 'Pune', 800000, 12, 'Completed'),
(2, 'HR Portal', 'Meena', 'HR', 'Mumbai', 300000, 6, 'Ongoing'),
(3, 'Finance App', 'Asha', 'Finance', 'Pune', 600000, 10, 'Completed'),
(4, 'Sales Tracker', 'Ravi', 'Sales', 'Delhi', 450000, 8, 'Ongoing'),
(5, 'Website Revamp', 'Lata', 'IT', 'Mumbai', 200000, 4, 'Completed'),
(6, 'CRM Tool', 'Amit', 'Sales', 'Pune', 700000, 14, 'Ongoing'),
(7, 'Payroll System', 'Neha', 'HR', 'Delhi', 500000, 9, 'Completed'),
(8, 'Inventory App', 'Rohan', 'IT', 'Nashik', 350000, 7, 'Ongoing'),
(9, 'Audit Tool', 'Pooja', 'Finance', 'Mumbai', 900000, 15, 'Completed'),
(10, 'Support System', 'Kunal', 'IT', 'Pune', 250000, 5, 'Ongoing');
SELECT * FROM projects;
