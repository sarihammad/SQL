-- Using a recursive CTE, list the management chain for each employee

WITH RECURSIVE management_chain AS (
		-- base case
    SELECT employee_id, name, manager_id, name AS path
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL -- no duplicates -> no need for UNION.

		-- recursive case
    SELECT e.employee_id, e.name, e.manager_id, mc.path || ' -> ' || e.name
    FROM employees e
    JOIN management_chain mc ON e.manager_id = mc.employee_id
)
SELECT * FROM management_chain
ORDER BY path;
