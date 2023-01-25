USE codeup_test_db;
SELECT name AS "Albums by Pink Floyd" FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE id = 28;
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name  FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name FROM albums WHERE sales_in_millions < 20;
SELECT name FROM albums WHERE genre = 'Rock';
