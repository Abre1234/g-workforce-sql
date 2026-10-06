# Government Workforce Analytics — PostgreSQL

## Overview

This project demonstrates the use of PostgreSQL to design, validate, and analyze a synthetic government workforce dataset inspired by workforce data structures in the Amhara Region of Ethiopia.

The project focuses on practical SQL skills including database design, data quality assessment, exploratory analysis, aggregation, filtering, joins, CTEs, window functions, and preparation of data for future statistical and machine learning analysis.

> **Note:** All employee records in this project are synthetic and created for learning and portfolio purposes. No real government employee information is used.

---

## Project Objectives

* Design a structured PostgreSQL employee database
* Practice SQL data manipulation and querying
* Identify potential duplicate records
* Check missing and inconsistent data
* Analyze workforce distribution across zones and woredas
* Analyze salary, education, position, and employment status
* Develop advanced SQL queries for analytical use
* Prepare a model-ready dataset for future Python/ML analysis

---

## Dataset

The dataset contains synthetic employee records covering three zones in the Amhara Region:

* West Gojjam
* East Gojjam
* South Wollo

The dataset includes information such as:

* Employee name
* Gender
* Date of birth
* Zone
* Woreda
* Government institution
* Field of study
* Education level
* Hire date
* Years of service
* Position
* Position level
* Salary
* Employment status

---

## Database Structure

### `employees`

| Column            | Description                |
| ----------------- | -------------------------- |
| employee_id       | Unique employee identifier |
| full_name         | Employee name              |
| gender            | Gender                     |
| date_of_birth     | Date of birth              |
| zone              | Administrative zone        |
| wereda            | Woreda                     |
| institution_name  | Government institution     |
| field_of_study    | Employee's field of study  |
| education_level   | Diploma, Bachelor, Master  |
| hire_date         | Employment start date      |
| years_of_service  | Years served               |
| position_name     | Current position           |
| position_level    | Position level             |
| salary            | Monthly salary in ETB      |
| employment_status | Employment status          |

---

## SQL Skills Demonstrated

### Data Quality

* `DISTINCT`
* `GROUP BY`
* `HAVING`
* Duplicate detection
* Missing-value checks
* Category validation
* Data consistency checks

### Data Analysis

* `COUNT()`
* `AVG()`
* `SUM()`
* `MIN()`
* `MAX()`
* Filtering with `WHERE`
* Grouping with `GROUP BY`
* Sorting with `ORDER BY`

### Advanced SQL

Planned/implemented analysis includes:

* `CASE`
* Common Table Expressions (CTEs)
* Window functions
* Ranking
* Subqueries
* Date functions
* Analytical views

---

## Example Questions

The project answers questions such as:

1. How many employees are represented in each zone?
2. Which institutions have the largest workforce?
3. What is the average salary by education level?
4. Which positions have the highest average salary?
5. How are employees distributed by field of study?
6. What percentage of employees are active?
7. Are there possible duplicate employee records?
8. Are there missing values?
9. How does years of service vary across positions?
10. Which groups could be useful for future workforce modeling?

---

## Project Workflow

```text
Synthetic Workforce Data
          ↓
PostgreSQL Database
          ↓
Data Quality Assessment
          ↓
Exploratory SQL Analysis
          ↓
Advanced SQL
          ↓
Model-Ready Dataset
          ↓
Python / Statistical Analysis
          ↓
Future Machine Learning Project
```

---

## Tools

* PostgreSQL
* Neon
* SQL
* GitHub
* Python/Pandas — planned for the modeling stage

---

## Future Development

The project will be extended with additional relational tables such as:

* Institutions
* Positions
* Employee History
* Training
* Performance

The final stage will connect PostgreSQL with Python to create a model-ready workforce dataset for statistical analysis and machine learning.

---

## Author

**Abraraw Ayal Kidanu**

Data Science Graduate | Database Administrator | Data Quality

Bahir Dar, Ethiopia
