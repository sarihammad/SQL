-- Count number of employees in each department

SELECT d.department_name, COUNT(*) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id -- left join to include 0 count departments
GROUP BY d.department_name;
