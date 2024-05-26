CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

SELECT DISTINCT d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

SELECT employee_id, name, age, department_id
FROM Employees
WHERE age BETWEEN 25 AND 30;