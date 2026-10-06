
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


