CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    zone VARCHAR(50),
    wereda VARCHAR(50),
    institution_name VARCHAR(100),
    field_of_study VARCHAR(50),
    education_level VARCHAR(50),
    hire_date DATE,
    years_of_service NUMERIC(5,2),
    position_name VARCHAR(50),
    position_level VARCHAR(50),
    salary NUMERIC(12,2),
    employment_status VARCHAR(50)
);
