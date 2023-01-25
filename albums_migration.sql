USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist VARCHAR(50) ,
        name VARCHAR(50) ,
        PRIMARY KEY (id),
        release_date INT ,
        sales_in_millions DOUBLE,
        genre VARCHAR(50)
);