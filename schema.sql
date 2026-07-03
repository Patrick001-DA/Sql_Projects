-- Banking Database SQL Project
-- schema.sql

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    city VARCHAR(50)
);

CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE accounts (
    account_no INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(12,2),
    loan_type VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    branch_id INT,
    job_title VARCHAR(50),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_no INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    FOREIGN KEY (account_no) REFERENCES accounts(account_no)
);
