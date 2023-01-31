USE test_exercises_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email_address    VARCHAR(50)  NOT NULL,
    password VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id),
    UNIQUE  KEY 'email_address_UNIQUE' ('email_address')
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(50)  NOT NULL,
    description    VARCHAR(250)  NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS ad_category;

CREATE TABLE ad_category
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_id       INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);



