USE codeup_test_db;

SELECT *
FROM albums
WHERE genre LIKE '%Rock%'
ORDER BY release_date DESC, artist ASC;