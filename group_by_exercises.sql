use employees;

select distinct title
from titles;

select first_name, last_name
from employees
where last_name like '%e'
  and last_name like 'e%'
group by first_name, last_name;

select last_name, count(last_name) as 'Count'
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

select count(*) as 'Count', gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;