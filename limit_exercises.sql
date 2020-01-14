use employees;

select distinct last_name
from employees
order by last_name desc
limit 10;

select *
from employees
where hire_date between '1990-01-01' and '2000-01-01'
  and birth_date like '%%%%-12-25'
order by birth_date, hire_date desc
limit 5 offset 45;
# page number = offset / limit + 1