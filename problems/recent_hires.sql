-- List employees hired in the last 2 years from today

SELECT e.employee_id, e.name, e.hire_date
FROM employees e
WHERE hire_date >= CURRENT_DATE - INTERVAL '2 years';
