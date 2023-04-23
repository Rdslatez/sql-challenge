CREATE TABLE titles (
	title_id varchar NOT NULL,
	title varchar,
	PRIMARY KEY(title_id)
)

CREATE TABLE departments (
	dept_no varchar NOT NULL,
	dept_name varchar NOT NULL,
	PRIMARY KEY(dept_no)
)

CREATE TABLE Employees (
	emp_no int NOT NULL,
	emp_title_id varchar NOT NULL,
	birth_date date,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex char,
	hire_date date,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)

)

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary money,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
)

CREATE TABLE dept_manager (
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
)

CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
