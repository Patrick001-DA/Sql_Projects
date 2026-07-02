-- insert_data.sql

INSERT INTO customers VALUES
(1, 'Patrick', 'Muchemi', 'Male', 'Kitengela'),
(2, 'Mary', 'Wanjiku', 'Female', 'Nairobi'),
(3, 'John', 'Otieno', 'Male', 'Kisumu'),
(4, 'Faith', 'Achieng', 'Female', 'Mombasa'),
(5, 'Brian', 'Mwangi', 'Male', 'Nakuru');

INSERT INTO branches VALUES
(101, 'KCB Kitengela', 'Kitengela'),
(102, 'Equity Nairobi', 'Nairobi'),
(103, 'Co-op Kisumu', 'Kisumu');

INSERT INTO accounts VALUES
(1001, 1, 101, 'Savings', 75000),
(1002, 2, 102, 'Current', 45000),
(1003, 3, 103, 'Savings', 120000),
(1004, 4, 102, 'Savings', 30000),
(1005, 5, 101, 'Current', 90000);

INSERT INTO loans VALUES
(201, 1, 250000, 'Personal'),
(202, 2, 150000, 'Business'),
(203, 4, 100000, 'Education');

INSERT INTO employees VALUES
(301, 'Alice Njeri', 101, 'Branch Manager'),
(302, 'Kevin Kiptoo', 102, 'Customer Service'),
(303, 'Susan Auma', 103, 'Loan Officer');

INSERT INTO transactions VALUES
(401, 1001, 'Deposit', 20000),
(402, 1001, 'Withdrawal', 5000),
(403, 1002, 'Deposit', 10000),
(404, 1003, 'Withdrawal', 7000),
(405, 1004, 'Deposit', 50000),
(406, 1005, 'Deposit', 30000);
