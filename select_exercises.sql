use codeup_test_db;

select name as '---\nAlbums by Pink Floyd:'
from albums
where artist = 'Pink Floyd';

select release_date as '---\nRelease date of Sgt. Pepper''s Lonely Hearts Club Band:'
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre as '---\nGenre of Nevermind:'
from albums
where name = 'Nevermind';

select name as '---\nAlbums released in the 1990s:'
from albums
where release_date between 1990 and 2000;

select name as '---\nAlbums with less than 20m certified sales:'
from albums
where sales < 20;

select name as '---\nAlbums with the genre of ''Rock'': '
from albums
where genre = 'Rock';