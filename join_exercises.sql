use employees;
SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as 'manager'
FROM employees as e
       JOIN dept_manager as dm
            ON dm.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
order by d.dept_name;

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as 'manager'
FROM employees as e
       JOIN dept_manager as dm
            ON dm.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
order by d.dept_name;


select t.title, count(*) as 'count'
from employees as e
       join dept_emp as de
            on de.emp_no = e.emp_no
       join titles as t
            on e.emp_no = t.emp_no
       join departments as d
            on d.dept_no = de.dept_no
where dept_name = 'Customer Service'
  and t.to_date = '9999-01-01'
  and de.to_date = '9999-01-01'
group by t.title;

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as 'manager', s.salary
FROM employees as e
       JOIN dept_manager as dm
            ON dm.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = dm.dept_no
       join salaries as s
            on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01'
order by d.dept_name;


SELECT concat(e.first_name, ' ', e.last_name) as 'employee', d.dept_name as 'department', concat(e2.first_name, ' ', e2.last_name) as 'manager'
FROM employees as e
       join dept_emp as de
            on de.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = de.dept_no
       JOIN dept_manager as dm
            ON d.dept_no = dm.dept_no
       join employees as e2
            on e2.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'
  and dm.to_date = '9999-01-01'
order by d.dept_name, e.emp_no;