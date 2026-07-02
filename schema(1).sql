-- Loan Analysis SQL Project
-- schema.sql

CREATE TABLE loan_data (
    person_age INT,
    person_gender VARCHAR(10),
    person_education VARCHAR(50),
    person_income DECIMAL(12,2),
    person_emp_exp INT,
    person_home_ownership VARCHAR(20),
    loan_amnt DECIMAL(12,2),
    loan_intent VARCHAR(30),
    loan_int_rate DECIMAL(5,2),
    loan_percent_income DECIMAL(5,2),
    cb_person_cred_hist_length INT,
    credit_score INT,
    previous_loan_defaults_on_file VARCHAR(3),
    loan_status INT
);
