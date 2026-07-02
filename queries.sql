-- queries.sql

-- 1. Show customers with balances greater than 50,000
SELECT c.first_name, c.last_name, a.account_no, a.balance
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
WHERE a.balance > 50000;

-- 2. Show customers who have accounts but no loans
SELECT c.first_name, c.last_name, a.account_no, a.balance
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
LEFT JOIN loans l
ON c.customer_id = l.customer_id
WHERE l.customer_id IS NULL;

-- 3. Find branches that have no employees
SELECT b.branch_id, b.branch_name, b.city
FROM branches b
LEFT JOIN employees e
ON b.branch_id = e.branch_id
WHERE e.branch_id IS NULL;

-- 4. Count customers in each branch
SELECT b.branch_name, COUNT(a.customer_id) AS total_customers
FROM branches b
LEFT JOIN accounts a
ON b.branch_id = a.branch_id
GROUP BY b.branch_name;

-- 5. Find customers who have both an account and a loan
SELECT c.first_name, c.last_name, a.account_no, l.loan_amount
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
JOIN loans l
ON c.customer_id = l.customer_id;

-- 6. Show customers who made a Deposit transaction
SELECT c.first_name, c.last_name, t.transaction_type, t.amount
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
JOIN transactions t
ON a.account_no = t.account_no
WHERE t.transaction_type = 'Deposit';

-- 7. Final report: customer, account, loan, branch, employee, last transaction
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_full_name,
    a.account_no,
    a.balance,
    l.loan_amount,
    b.branch_name,
    e.employee_name,
    t.transaction_type AS last_transaction_type,
    t.amount AS last_transaction_amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
LEFT JOIN loans l
    ON c.customer_id = l.customer_id
JOIN branches b
    ON a.branch_id = b.branch_id
LEFT JOIN employees e
    ON b.branch_id = e.branch_id
JOIN transactions t
    ON a.account_no = t.account_no
WHERE t.transaction_id = (
    SELECT MAX(t2.transaction_id)
    FROM transactions t2
    WHERE t2.account_no = a.account_no
);
