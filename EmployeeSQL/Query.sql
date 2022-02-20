-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from salaries as s
INNER JOIN employees as e on
e.emp_no=s.emp_no;
-- Query Successful

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1/1/1986' and '12/31/1986'
order by hire_date;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join department_manager on
department_manager.dept_no=departments.dept_no
inner join employees on
department_manager.emp_no=employees.emp_no;
-- Query Successful

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select department_employee.emp_no, employees.last_name, employees.first_name, departments.dept_name
from department_employee
inner join employees on
department_employee.emp_no=employees.emp_no
inner join departments on
department_employee.dept_no=departments.dept_no;
-- Query Successful


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%';
-- Query Successful


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join department_employee as de on
de.emp_no=e.emp_no
inner join departments as d on
d.dept_no=de.dept_no
where d.dept_name='Sales';
-- Query Successful


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join department_employee as de on
de.emp_no=e.emp_no
inner join departments as d on
d.dept_no=de.dept_no
where d.dept_name='Sales' or d.dept_name='Development';
-- Query Successful


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
from employees
group by last_name
order by count(*) desc;
-- Query Successful
