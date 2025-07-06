DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE employees (
	employee_id INTEGER PRIMARY KEY,
	name TEXT,
	department_id INTEGER,
	salary INTEGER,
	hire_date DATE,
	manager_id INTEGER,
	FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE departments (
	department_id INTEGER PRIMARY KEY,
	department_name TEXT
);
