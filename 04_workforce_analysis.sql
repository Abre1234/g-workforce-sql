
--Overall salary statistics
SELECT
    COUNT(salary) AS employees_with_salary,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees;

-- Average salary by zone
SELECT
    zone,
    COUNT(*) AS employee_count,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY zone
ORDER BY average_salary DESC;

--Highest-paid employees
SELECT
    employee_id,
    full_name,
    position_name,
    education_level,
    zone,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 10;


--Which positions have higher average compensation, and how much experience do employees in those positions have?
SELECT
    position_name,
    COUNT(*) AS employee_count,
    ROUND(AVG(salary), 2) AS average_salary,
    ROUND(AVG(years_of_service), 2) AS average_years_of_service
FROM employees
GROUP BY position_name
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC;
