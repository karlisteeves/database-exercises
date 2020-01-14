use codeup_test_db;

select 'All albums';
select *
from albums;

update albums
set sales = sales * 10;

select *
from albums;

select 'Albums released before 1980';
select *
from albums
where release_date < 1980;

update albums
set release_date = release_date - 100
where release_date < 1980;

select *
from albums
where release_date < 1980;


select *
from albums
where artist = 'Michael Jackson';

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select *
from albums
where artist = 'Peter Jackson';