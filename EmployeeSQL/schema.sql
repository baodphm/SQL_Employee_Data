DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no character varying(50),
  dept_name character varying(50) NOT NULL,
  PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(45) NOT NULL,
  FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
  dept_no character varying(50) NOT NULL,
  emp_no integer NOT NULL,
  FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE employees (
    emp_no integer NOT NULL,
    emp_title_id character varying(50) NOT NULL,
    birth_date date NOT NULL,
	first_name character varying(50) NOT NULL,
	last_name character varying(50) NOT NULL,
	sex character varying(50) NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary money NOT NULL,
  FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
  title_id character varying(50) NOT NULL,
  title character varying(50) NOT NULL,
  PRIMARY KEY (title_id)
);

