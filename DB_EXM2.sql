	
create database pract2;
use pract2;

create table students(
studID int primary key,
stud_name varchar(100) not null,
email varchar(50) NOT NULL,
course varchar(100) NOT NULL
);
 
 insert into students(studID,stud_name, email, course) values
 ('1', 'amol', 'amol@gmail.com', 'IT'),
  ('2', 'amit', 'amit@gmail.com', 'cs'),
   ('3', 'virat', 'virat@gmail.com', 'mech'),
    ('4', 'ronaldo', 'ronaldo@gmail.com', 'sports');
    
    select * from students;
    create table courses(
    course_id int auto_increment primary key,
    course_name varchar(100) not null,
    credits varchar(10) not null);
    
    insert into courses(  course_id,course_name, credits) values
    ('1', 'computer science', '24'),
      ( '2','IT', '24'),
        ( '3','mech', '24'),
          ( '4','sports', '30');
	select * from courses;
    
    
    DROP table enrollments;
    create table enrollments(
    enroll_id int primary key,
    stud_id int not null,
    course_id int not null,
    enroll_date date ,
  FOREIGN KEY  (stud_id) REFERENCES students(studID),
  FOREIGN KEY (course_id) REFERENCES courses( course_id)
    );
    
    insert into enrollments(enroll_id,  stud_id ,course_id, enroll_date) values
    ('1', '2','1',  '2026-12-21' ),
     ('2', '1','3',  '2026-12-22' ),
      ('3', '3','4',  '2026-12-23' ),
       ('4', '4','2',  '2026-12-20' );
       
       select * from enrollments;
       
       show tables;
       desc students; --  used to see all fields types and all
       desc courses;
       desc enrollments;
       
       INSERT INTO enrollments
VALUES ('1', '999', '101',  '2026-12-23');
       
    
