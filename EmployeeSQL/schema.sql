CREATE TABLE employees (
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR (25),
	last_name VARCHAR (25),
	gender VARCHAR (1),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
	emp_no INT,
	title VARCHAR (25),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, from_date)
);

CREATE TABLE departments(
	dept_no VARCHAR (5),
	dept_name VARCHAR (50),
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR (5),
	emp_no INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR (5),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);