CREATE DATABASE example_news;

USE example_news;

CREATE TABLE news (
  id int PRIMARY KEY AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  story varchar(500) NOT NULL,
  date_published date NOT NULL
);

INSERT INTO news (title, story, date_published) 
VALUES ('Dewey Defeats Truman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1948-11-07');

INSERT INTO news (title, story, date_published) 
VALUES ('One Giant Leap for Mankind', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
', '1969-07-20');