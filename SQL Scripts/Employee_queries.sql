-- 1)List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no , e.last_name, e.first_name, e.sex , s.salary
From employees as e
join salaries as s 
on e.emp_no = s.emp_no;

-- 2)List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name , last_name,
to_char(hire_date , 'mm/dd/yyyy') as hire_date
from employees
where extract (year from hire_date) = 1986;

-- 3) List the manager of each department 
--along with their department number, department name, employee number, last name, and first name.

select m.dept_no , d.dept_name , m.emp_no , e.last_name, e.first_name
from dept_manager as m
join departments as d on m.dept_no =d.dept_no
join employees as e on m.emp_no = e.emp_no;

--4)List the department number for each employee 
--along with that employee’s employee number, last name, first name, and department name

select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
join employees as e on de.emp_no = e.emp_no
join departments as d on de.dept_no = d.dept_no;

--5)List the first name, last name, and sex of each employee
--whose first name is Hercules and whose last name begins with the letter B.

select first_name,last_name,sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6) List each employee in the Sales department, 
--including their employee number, last name, and first name.
select * from departments;

select d.dept_name , de.emp_no , e.last_name, e.first_name	
from dept_emp as de
join departments as d on de.dept_no = d.dept_no
join employees as e on de.emp_no = e.emp_no
where d.dept_name = 'Sales';

--7)List each employee in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

select d.dept_name , de.emp_no , e.last_name, e.first_name	
from departments as d
join dept_emp as de on de.dept_no = d.dept_no
join employees as e on de.emp_no = e.emp_no
where d.dept_name in ('Sales','Development')
order by d.dept_name;

--8)List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
select last_name ,count(last_name) as frequency_counts
from employees
group by last_name
order by frequency_counts desc;


select * from departments;
















