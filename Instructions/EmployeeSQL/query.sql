--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.

select e.emp_no, 
	   e.last_name, 
	   e.first_name, 
	   e.sex, 
	   s.salary
from employees as e
left join salaries as s
on s.emp_no = e.emp_no
;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date like '%1986' 
;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select d.dept_name,
       d.dept_no,	   
	   m.emp_no,
	   e.last_name, 
	   e.first_name
from departments as d
inner join dept_manager as m 
on m.dept_no = d.dept_no
inner join employees as e 
on m.emp_no = e.emp_no
;	   

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select e.emp_no, 
	   e.last_name, 
	   e.first_name,
	   d.dept_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
;


--List first name, last name, and sex for employees whose: 
--first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'
;

--List all employees in the Sales department, including their:
--employee number, last name, first name, and department name.

select e.emp_no, 
	   e.last_name, 
	   e.first_name,
	   d.dept_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
where dept_name = 'Sales'
;
		
--List all employees in the Sales and Development departments, including their:
--employee number, last name, first name, and department name.

select e.emp_no, 
	   e.last_name, 
	   e.first_name,
	   d.dept_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
;

--In descending order, list:
--the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "last name count"
from employees
group by last_name
order by "last name count" desc
;


