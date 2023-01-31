USE test_exercises_db;

TRUNCATE users;

INSERT INTO users(email, password)
VALUES('tom@example.com', 'password1'),
      ('jane@example.com', 'password2'),
      ('sue@example.com', 'password3'),
      ('thomas@example.com', 'password4'),
      ('rebeccca@example.com', 'password5');


TRUNCATE categories;

INSERT INTO categories(name)
VALUES('rock'),
      ('jazz'),
      ('funk'),
      ('R&B'),
      ('country'),
      ('hip-hop'),
      ('other');


TRUNCATE ads;


INSERT INTO ads(user_id, name, description)
VALUES((SELECT id FROM users WHERE users.email = 'tom@example.com'),'local gig','looking for local music to play with');
INSERT INTO ads(user_id, name, description)
VALUES((SELECT id FROM users WHERE users.email = 'jane@example.com'),'CHECK','THIS IS TEST DUMMY DATA!!!');
INSERT INTO ads(user_id, name, description)
VALUES((SELECT id FROM users WHERE users.email = 'tom@example.com'),'CHECK 2','TEST TEST');
