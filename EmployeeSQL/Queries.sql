-------- 1
select employees.emp_no, last_name, first_name, sex, salary
from employees
join salaries on salaries.emp_no = employees.emp_no

-------- 2

select first_name, last_name, hire_date
from employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'

-------- 3

select dept_manager.dept_no, dept_manager.emp_no, dept_name, last_name, first_name
from dept_manager, employees, departments

-------- 4

select dept_name, employees.emp_no, last_name, first_name
from departments, employees
join dept_emp on dept_emp.emp_no = employees.emp_no

-------- 5

select first_name, last_name, sex
from employees
where first_name in
(
  SELECT first_name
  FROM employees
  WHERE (first_name = 'Hercules' AND last_name like 'B%')

);

------- 6

Select employees.emp_no, last_name, first_name, dept_name
from departments, employees
where dept_name = 'Sales'

------- 7

Select employees.emp_no, last_name, first_name, dept_name
from departments, employees
where dept_name = 'Sales' OR dept_name = 'Development'

-------- 8

SELECT last_name, COUNT(last_name) AS "Last Name count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name count" DESC;


