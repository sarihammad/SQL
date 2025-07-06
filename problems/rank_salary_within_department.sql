-- Rank employees by salary within each department (use RANK or DENSE_RANK)

SELECT e.*, d.department_name, DENSE_RANK() OVER (PARTITION BY d.department_id ORDER BY e.salary DESC) AS salary_rank
FROM employees e 
JOIN departments d on e.department_id = d.department_id;
