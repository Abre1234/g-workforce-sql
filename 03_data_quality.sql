-- 1. Total number of records
SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Check unique zones
SELECT DISTINCT zone
FROM employees
ORDER BY zone;


-- 3. Check unique woredas
SELECT DISTINCT zone, wereda
FROM employees
ORDER BY zone, wereda;


-- 4. Check possible duplicate names
SELECT
    full_name,
    COUNT(*) AS occurrences
FROM employees
GROUP BY full_name
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;


-- 5. Check exact duplicate records
SELECT
    full_name,
    gender,
    date_of_birth,
    zone,
    wereda,
    institution_name,
    field_of_study,
    education_level,
    hire_date,
    years_of_service,
    position_name,
    position_level,
    salary,
    employment_status,
    COUNT(*) AS occurrences
FROM employees
GROUP BY
    full_name,
    gender,
    date_of_birth,
    zone,
    wereda,
    institution_name,
    field_of_study,
    education_level,
    hire_date,
    years_of_service,
    position_name,
    position_level,
    salary,
    employment_status
HAVING COUNT(*) > 1;


-- 6. Check missing values
SELECT
    COUNT(*) FILTER (WHERE full_name IS NULL) AS missing_name,
    COUNT(*) FILTER (WHERE gender IS NULL) AS missing_gender,
    COUNT(*) FILTER (WHERE zone IS NULL) AS missing_zone,
    COUNT(*) FILTER (WHERE wereda IS NULL) AS missing_wereda,
    COUNT(*) FILTER (WHERE salary IS NULL) AS missing_salary
FROM employees;


-- 7. Check distinct fields of study
SELECT DISTINCT field_of_study
FROM employees
ORDER BY field_of_study;
