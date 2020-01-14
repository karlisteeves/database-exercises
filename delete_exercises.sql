use codeup_test_db;

select 'albums released after 1991';
-- select * from albums where release_date > 1991;
delete from albums where release_date > 1991;

select 'albums with the genre ''disco''';
-- select * from albums where genre = 'disco';
delete from albums where genre = 'disco';

select 'albums by Whitney Houston';
-- select * from albums where artist = 'Whitney Houston';
delete from albums where artist = 'Whitney Houston';