USE codeup_test_db;
SELECT 'All Albums released in 1991' AS 'Notice:';

-- SELECT * FROM albums WHERE release_date = 1991;
DELETE FROM albums WHERE release_date = 1991;

SELECT 'All Albums with disco as a genre' AS 'Notice:';

-- SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'All Albums by Celine Dion' AS 'Notice:';

-- SELECT * FROM albums WHERE artist = 'Celine Dion';
DELETE FROM albums WHERE artist = 'Celine Dion';

SELECT 'All Albums in table' AS 'Notice:';
SELECT * FROM albums;


