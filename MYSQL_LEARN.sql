show databases;
use amol;
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(100) UNIQUE NOT NULL,
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
alter table users modify column gender ENUM('Male', 'Female', 'trans','other');

select * from users;  
alter table users modify column email varchar(100) FIRST;
ALTER TABLE users modify column name varchar(100) after id;
alter table users modify column id int after name;
alter table users modify column email varchar(100) after name;
INSERT INTO users(name, email, gender, date_of_birth) values
('amit', 'amit@gmail', 'female', '2005-12-21' ),
('dhoni', 'dhoni@gmail', 'trans', '1982-12-21' );

INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Charlie', 'charlie@example.com', 'Other', '1988-02-17'),
('David', 'david@example.com', 'Male', '2000-08-09'),
('Eva', 'eva@example.com', 'Female', '1993-12-30');
select name, email,gender from users;
select * from users where gender='male';
select * from users where gender ='trans';
select * from users where gender !='male';
select * from users;
select * from users WHERE email between 'a' and 'z';
SELECT * FROM users WHERE gender IN ('Male', 'trans','female');
select * from users where name like '%li%';
select * from users where gender= 'male' and email between 'a' and 'z';
select * from users order by name DESC;
SELECT * FROM users ORDER BY id ASC;
select * from users order by name desc;

-- UPDATE - Modifying Existing Data
 UPDATE users
 set name = 'MICHEAL', email='MICHEAL@GMAIL.COM'
 WHERE id=27;
 SELECT * FROM USERS;
 
 
