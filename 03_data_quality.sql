-- 1. Check total number of records
SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Check duplicate employee names
SELECT
    full_name,
    COUNT(*) AS occurrences
FROM employees
GROUP BY full_name
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;


-- 3. Compare total rows with unique names
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT full_name) AS unique_names,
    COUNT(*) - COUNT(DISTINCT full_name) AS possible_duplicates
FROM employees;


-- 4. Check missing values
SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE full_name IS NULL) AS missing_name,
    COUNT(*) FILTER (WHERE gender IS NULL) AS missing_gender,
    COUNT(*) FILTER (WHERE date_of_birth IS NULL) AS missing_dob,
    COUNT(*) FILTER (WHERE zone IS NULL) AS missing_zone,
    COUNT(*) FILTER (WHERE wereda IS NULL) AS missing_wereda,
    COUNT(*) FILTER (WHERE institution_name IS NULL) AS missing_institution,
    COUNT(*) FILTER (WHERE field_of_study IS NULL) AS missing_field,
    COUNT(*) FILTER (WHERE education_level IS NULL) AS missing_education,
    COUNT(*) FILTER (WHERE hire_date IS NULL) AS missing_hire_date,
    COUNT(*) FILTER (WHERE years_of_service IS NULL) AS missing_service_years,
    COUNT(*) FILTER (WHERE position_name IS NULL) AS missing_position,
    COUNT(*) FILTER (WHERE salary IS NULL) AS missing_salary,
    COUNT(*) FILTER (WHERE employment_status IS NULL) AS missing_status
FROM employees;


-- 5. Check years of service against hire date
SELECT
    employee_id,
    full_name,
    hire_date,
    years_of_service,
    ROUND(
        (CURRENT_DATE - hire_date) / 365.25,
        2
    ) AS calculated_years,
    ROUND(
        years_of_service - ((CURRENT_DATE - hire_date) / 365.25),
        2
    ) AS difference
FROM employees
ORDER BY difference DESC;
