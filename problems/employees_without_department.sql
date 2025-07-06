-- Find employees who are not assigned to any department

SELECT employee_id, name
FROM employees 
WHERE department_id IS NULL;
