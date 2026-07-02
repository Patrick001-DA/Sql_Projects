-- queries.sql

-- 1. Count applicants by gender
SELECT person_gender, COUNT(*) AS total_applicants
FROM loan_data
GROUP BY person_gender;

-- 2. Average income for each education level
SELECT person_education, AVG(person_income) AS avg_income
FROM loan_data
GROUP BY person_education;

-- 3. Female applicants who own a house
SELECT *
FROM loan_data
WHERE person_gender = 'female'
  AND person_home_ownership = 'OWN';

-- 4. Applicants aged between 20 and 25
SELECT *
FROM loan_data
WHERE person_age BETWEEN 20 AND 25;

-- 5. Applicants with income above 100000
SELECT *
FROM loan_data
WHERE person_income > 100000;

-- 6. Show average loan amount by loan intent
SELECT loan_intent, AVG(loan_amnt) AS avg_loan_amount
FROM loan_data
GROUP BY loan_intent;

-- 7. Show number of defaults vs non-defaults
SELECT loan_status, COUNT(*) AS total
FROM loan_data
GROUP BY loan_status;

-- 8. CASE: classify income level
SELECT
    person_gender,
    person_income,
    CASE
        WHEN person_income < 50000 THEN 'Low Income'
        WHEN person_income BETWEEN 50000 AND 150000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_band
FROM loan_data;

-- 9. Applicants with previous defaults
SELECT *
FROM loan_data
WHERE previous_loan_defaults_on_file = 'Yes';

-- 10. Highest credit score applicant
SELECT *
FROM loan_data
ORDER BY credit_score DESC
LIMIT 1;
