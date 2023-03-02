-- Drop table if exists
DROP TABLE titles CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE departments CASCADE;
DROP TABLE dept_emp CASCADE;
DROP TABLE dept_manager CASCADE;
DROP TABLE salaries CASCADE;

-- Create titles table
CREATE TABLE titles ( 
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (45),
	PRIMARY KEY (title_id)
);

-- Create employees table
CREATE TABLE employees ( 
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR (10),
	birth_date DATE,
	first_name VARCHAR (45),
	last_name VARCHAR (45),
	sex VARCHAR (5),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

-- Create departments table
CREATE TABLE departments ( 
	dept_no VARCHAR (10) NOT NULL,
	dept_name VARCHAR (45),
	PRIMARY KEY (dept_no)
);

-- Create dept_emp table
CREATE TABLE dept_emp ( 
	emp_no INTEGER,
	dept_no VARCHAR (10)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR (10),
	emp_no INTEGER
);

-- Create salaries table
CREATE TABLE salaries ( 
	emp_no INTEGER,
	salary MONEY
);

