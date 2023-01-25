USE codeup_test_db;

SELECT * FROM albums WHERE release_date = 1990;


SELECT * FROM albums WHERE  genre LIKE 'Disco'; -- Case equals
SELECT * FROM albums WHERE  genre LIKE '%Disco'; -- must end with disco
SELECT * FROM albums WHERE  genre LIKE 'Disco%'; -- must start with disco
SELECT * FROM albums WHERE  genre LIKE '%Disco%'; -- must contain disco


SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;


SELECT * FROM albums WHERE artist IN ('Pink Floyd','Metallica','Kiss','Bruce Springsteen');

SELECT * FROM albums WHERE artist = 'The Beatles' AND release_date > 1979;

SELECT * FROM albums WHERE artist = 'The Beatles' OR release_date < 1974;

SELECT * FROM albums WHERE artist = 'Shania Twain' AND release_date > 1990 OR genre LIKE '%rock';
SELECT * FROM albums WHERE  release_date > 1990 OR genre LIKE '%rock' AND artist = 'Shania Twain';