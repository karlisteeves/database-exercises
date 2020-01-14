use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name desc;

select *
from employees
where last_name like 'E%'
order by emp_no desc;

select *
from employees
where last_name like '%e'
   or last_name like 'e%'
order by emp_no desc;

select concat(first_name, ' ', last_name) as 'People who''s names begin and end with e'
from employees
where last_name like '%e'
  and last_name like 'e%'
order by emp_no desc;


select concat(first_name, ' ', last_name) as `Name`, datediff(now(), hire_date) as 'DaysWorking'
from employees
where hire_date between '1990-01-01' and '2000-01-01'
  and birth_date like '%%%%-12-25'
order by birth_date, hire_date desc;