DROP DATABASE IF EXISTS edugames;
CREATE DATABASE IF NOT EXISTS edugames;
USE edugames;

-- =====================
-- 164 - 2B
-- =====================

CREATE TABLE employee (
 name VARCHAR(100),
 vorname VARCHAR(100),
 kosename VARCHAR(100),
 adresse VARCHAR(100),
 ort VARCHAR(100)
);

ALTER TABLE employee CHANGE name last_name VARCHAR(100);
ALTER TABLE employee CHANGE vorname first_name VARCHAR(100);
ALTER TABLE employee CHANGE kosename nickname VARCHAR(100);
ALTER TABLE employee CHANGE adresse address VARCHAR(100);
ALTER TABLE employee CHANGE ort city VARCHAR(100);

ALTER TABLE employee ADD COLUMN address2 VARCHAR(100) AFTER address;
ALTER TABLE employee DROP COLUMN nickname;
ALTER TABLE employee MODIFY city VARCHAR(50);

-- =====================
-- 164 - 2C
-- =====================

ALTER TABLE employee ADD COLUMN zip CHAR(10);
ALTER TABLE employee ADD COLUMN phone CHAR(15);
ALTER TABLE employee ADD COLUMN dob DATE;
ALTER TABLE employee ADD COLUMN salary DECIMAL(8,2);
ALTER TABLE employee ADD COLUMN employment DECIMAL(3,0);
ALTER TABLE employee ADD COLUMN civilstatus ENUM('single','married','widowed','divorced','unknown');
ALTER TABLE employee ADD COLUMN childallowance BOOLEAN;
ALTER TABLE employee ADD COLUMN employeephoto BLOB;
ALTER TABLE employee ADD COLUMN numberchildren TINYINT;

-- =====================
-- 164 - 3A
-- =====================

INSERT INTO employee
(first_name,last_name,address,address2,city,zip,phone,dob,salary,employment,civilstatus,childallowance)
VALUES 
('Maria','Solti','Südhangweg 5','','Bern','3006','+41556661234','2001-10-04',6500,75,'single',0),
('Mario','Kienthal','Am Fluss 3','Block 3','Zürich','8004','+41994443214','2002-03-04',5400,60,'single',0),
('Sascha','Honnegger','Bernstrasse 19','','Oberthal','3609','+41397773311','1998-05-29',6800,80,'married',1);

SELECT * FROM employee;
SELECT first_name, last_name, salary FROM employee;

ALTER TABLE employee MODIFY last_name VARCHAR(100) NOT NULL;
DELETE FROM employee WHERE city = 'Bern';

-- =====================
-- 164 - 3B
-- =====================

CREATE TABLE user (
 user_id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(100) NOT NULL,
 usermail VARCHAR(100) NOT NULL
);

CREATE TABLE game (
 game_id INT AUTO_INCREMENT PRIMARY KEY,
 gameName VARCHAR(100) NOT NULL,
 gameOS VARCHAR(250),
 gameDescription VARCHAR(250)
);

CREATE TABLE review (
 review_id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT NOT NULL,
 game_id INT NOT NULL,
 ratingstars TINYINT DEFAULT 3,
 ratingtext VARCHAR(250),
 review_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO user (username, usermail) VALUES
('sue99','sue99@gmail.com'),
('matto','matto@gmail.com');

INSERT INTO game (gameName, gameOS, gameDescription) VALUES
('MatheBlaster','Windows','Mathe lernen'),
('LetterHunter','Windows','Buchstaben lernen'),
('MatheBlaster 2','MacOS','Mathe lernen'),
('LetterHunter 2','MacOS','Buchstaben lernen');

INSERT INTO review (game_id, user_id, ratingstars, ratingtext) VALUES
(1,1,4,'superlustig!'),
(2,1,3,'zu schwierig'),
(2,2,5,'habe viel gelernt'),
(1,2,5,'Guter Sound');

ALTER TABLE review
ADD CONSTRAINT fk_user_review FOREIGN KEY (user_id) REFERENCES user(user_id),
ADD CONSTRAINT fk_game_review FOREIGN KEY (game_id) REFERENCES game(game_id);

-- bewusst fehlerhaft (FK-Test)
-- INSERT INTO review (game_name, username, ratingstars, ratingtext)
-- VALUES ('MatheBlaster','sue88',4,'superlustig!');

-- =====================
-- 164 - 4A
-- =====================

ALTER TABLE review
MODIFY ratingstars TINYINT DEFAULT 3 CHECK (ratingstars BETWEEN 1 AND 5);

-- =====================
-- 164 - 5B (ZIELSTAND)
-- =====================

-- 5B Tabellen (Teil des neuen vollständigen Schemas)
CREATE TABLE customeraccount (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(45),
  email VARCHAR(50),
  passphrase VARCHAR(45),
  ranking INT
);

CREATE TABLE salary (
  salary_id INT AUTO_INCREMENT PRIMARY KEY,
  amount DECIMAL(13,2) NOT NULL
);

CREATE TABLE department (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  head INT
);

CREATE TABLE project (
  project_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45),
  project_head INT NOT NULL,
  game_id INT NOT NULL
);

CREATE TABLE assignment (
  assignment_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45),
  project_id INT NOT NULL,
  priority INT,
  status INT
);

CREATE TABLE employee_assignment (
  employee_id INT,
  assignment_id INT,
  date DATE,
  time FLOAT,
  PRIMARY KEY (employee_id, assignment_id)
);

CREATE TABLE employee_salary (
  employee_id INT,
  salary_id INT,
  percentage FLOAT,
  valid_date DATE,
  PRIMARY KEY (employee_id, salary_id)
);

CREATE TABLE game_customeraccount (
  game_id INT,
  customer_id INT,
  salesprice DECIMAL(13,2),
  salesdate DATE,
  PRIMARY KEY (game_id, customer_id)
);

-- =====================
-- FREMD­SCHLÜSSEL
-- =====================

ALTER TABLE department
  ADD CONSTRAINT fk_department_head FOREIGN KEY (head) REFERENCES employee(employee_id);

ALTER TABLE employee
  ADD CONSTRAINT fk_employee_department FOREIGN KEY (department) REFERENCES department(department_id);

ALTER TABLE project
  ADD CONSTRAINT fk_project_head FOREIGN KEY (project_head) REFERENCES employee(employee_id),
  ADD CONSTRAINT fk_project_game FOREIGN KEY (game_id) REFERENCES game(game_id);

ALTER TABLE assignment
  ADD CONSTRAINT fk_assignment_project FOREIGN KEY (project_id) REFERENCES project(project_id);

ALTER TABLE employee_assignment
  ADD CONSTRAINT fk_emp_assign_emp FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  ADD CONSTRAINT fk_emp_assign_assign FOREIGN KEY (assignment_id) REFERENCES assignment(assignment_id);

ALTER TABLE employee_salary
  ADD CONSTRAINT fk_emp_salary_emp FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  ADD CONSTRAINT fk_emp_salary_salary FOREIGN KEY (salary_id) REFERENCES salary(salary_id);

ALTER TABLE game_customeraccount
  ADD CONSTRAINT fk_game_customer FOREIGN KEY (game_id) REFERENCES game(game_id),
  ADD CONSTRAINT fk_customer_game FOREIGN KEY (customer_id) REFERENCES customeraccount(customer_id);

ALTER TABLE review
  ADD CONSTRAINT fk_review_game FOREIGN KEY (game_id) REFERENCES game(game_id),
  ADD CONSTRAINT fk_review_customer FOREIGN KEY (customer_id) REFERENCES customeraccount(customer_id);

-- =====================
-- ABFRAGEN
-- =====================

-- customeraccount
SELECT * FROM customeraccount WHERE ranking > 75;
SELECT * FROM customeraccount WHERE ranking < 25;
SELECT * FROM customeraccount WHERE ranking BETWEEN 25 AND 75;
SELECT * FROM customeraccount WHERE username LIKE 'L%';

-- employee
SELECT * FROM employee WHERE department = 6;
SELECT * FROM employee WHERE name LIKE '%a%';
SELECT * FROM employee WHERE department IS NULL;
SELECT * FROM employee WHERE employee_id < 8;

-- employee_salary
SELECT * FROM employee_salary WHERE percentage < 100;
SELECT * FROM employee_salary WHERE percentage BETWEEN 70 AND 100;
SELECT * FROM employee_salary WHERE salary_id = 2 AND percentage = 100;
SELECT * FROM employee_salary WHERE salary_id = 5 AND percentage <> 100;

-- game_customeraccount
SELECT * FROM game_customeraccount WHERE game_id = 4;
SELECT * FROM game_customeraccount WHERE game_id = 1 AND salesprice = 30;
SELECT * FROM game_customeraccount WHERE customer_id = 4;
SELECT * FROM game_customeraccount WHERE salesprice < 25;

-- review
SELECT * FROM review WHERE customer_id = 4;
SELECT * FROM review WHERE score < 75;
SELECT * FROM review WHERE customer_id = 4 AND score BETWEEN 50 AND 100;
SELECT * FROM review WHERE game_id = 3 AND score > 75;
