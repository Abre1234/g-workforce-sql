--Employee ranking with Window Functions
--Who are the highest-paid employees within each zone?
SELECT
    employee_id,
    full_name,
    zone,
    position_name,
    salary,
    RANK() OVER (
        PARTITION BY zone
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees
ORDER BY zone, salary_rank;



--Top 3 employees in each zone
WITH ranked_employees AS (
    SELECT
        employee_id,
        full_name,
        zone,
        position_name,
        salary,
        RANK() OVER (
            PARTITION BY zone
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT *
FROM ranked_employees
WHERE salary_rank <= 3
ORDER BY zone, salary_rank;
