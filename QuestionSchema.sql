SELECT Employees.emp_no, last_name, first_name, sex, salaries.salary
FROM Employees
LEFT JOIN salaries
on Employees.emp_no = salaries.emp_no

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '$1986-01-01' AND '$1986-12-31'

SELECT dept_manager.dept_no, 
departments.dept_name,
Employees.emp_no,  
Employees.last_name,
Employees.first_name
FROM dept_manager
LEFT JOIN Employees
on dept_manager.emp_no = Employees.emp_no
RIGHT JOIN departments
on dept_manager.dept_no = departments.dept_no


SELECT dept_emp.dept_no,
Employees.emp_no,
Employees.last_name,
Employees.first_name,
departments.dept_name
FROM dept_emp
RIGHT JOIN Employees
on dept_emp.emp_no = Employees.emp_no
RIGHT JOIN departments
on dept_emp.dept_no = departments.dept_no

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name LIKE '%Hercules%'
AND last_name LIKE 'B%'

SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name
FROM dept_emp
RIGHT JOIN Employees
on dept_emp.emp_no = Employees.emp_no
RIGHT JOIN departments
on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name LIKE 'Sales'

SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name,
departments.dept_name
FROM dept_emp
RIGHT JOIN Employees
on dept_emp.emp_no = Employees.emp_no
RIGHT JOIN departments
on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name LIKE 'Sales'
OR departments.dept_name LIKE 'Development'

Select last_name, count(last_name)
from Employees
GROUP BY last_name
ORDER BY count(last_name) desc

