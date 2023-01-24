USE codeup_test_db;

SELECT 'All Albums in table' AS 'Notice:';
SELECT * FROM albums;
SELECT 'All Albums released before 1980' AS 'Notice:';
SELECT * FROM albums WHERE release_date <= 1980;
SELECT 'All Albums By Micheal Jackson' AS 'Notice:';
SELECT * FROM albums WHERE artist = 'Micheal Jackson';

UPDATE albums
SET sales_in_millions = sales_in_millions * 10;

SELECT 'All Albums in table' AS 'Notice:';
SELECT * FROM albums;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

SELECT 'All Albums in table' AS 'Notice:';
SELECT * FROM albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson';

SELECT 'All Albums in table' AS 'Notice:';
SELECT * FROM albums \G;
