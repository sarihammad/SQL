-- For each department, find the employees with the highest salary

SELECT d.department_name, MAX(e.salary)
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- To show the employees themselves that share the top salary, we need window functions

SELECT d.department_name, e.employee_id, e.name, e.salary
FROM ( -- subquery with ranks to filter out rank = 1
	SELECT *, RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank
	FROM employees
) e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary_rank = 1;
