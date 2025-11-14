create table Department(
dept_id int primary key,
dept_name varchar not null,
faculty_id int,
contact_no bigint,
budget float
);

insert into department (dept_id, dept_name, faculty_id, contact_no, budget)
VALUES (1, 'Computer Science', 103, '0445551001', 500000.00);

INSERT INTO Department (dept_id, dept_name, faculty_id, contact_no, budget) values
(2, 'Electrical Engineering', 101, '0445552002', 450000.00),
(3, 'Mathematics', 102, '0445553003', 380000.00),
(4, 'Civil Engineering', 104, '0445554004', 620000.50),
(5, 'Biotechnology', 105, '0445555005', 510000.75);

select * from department


create table students(
student_id int primary key,
first_name varchar,
last_name varchar,
email varchar unique,
dept_id int,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

insert into students (student_id, first_name, last_name, email, dept_id)
values(5001, 'Rahul', 'Singh', 'rahul.s@university.edu', 1);

select * from students

create table faculty(
faculty_id int primary key,
first_name varchar not null,
last_name varchar,
office_no varchar,
salary float
);

INSERT INTO faculty(faculty_id, first_name, last_name, office_no, salary)
VALUES (101, 'Anil','Gupta', 'A201', 150000);

select * from faculty

insert into faculty(faculty_id, first_name, last_name, office_no, salary) values
(102, 'Priya', 'Sharma', 'B305', 135000.00),
(103, 'Sanjay', 'Verma', 'C110', 160000.00),
(104, 'Gita', 'Menon', 'D402', 145000.00),
(105, 'Ravi', 'Kumar', 'E107', 175000.50),
(106, 'Lata', 'Mishra', 'F301', 128000.00);

select * from faculty


create table courses(
course_id serial primary key,
course_code varchar not null unique,
course_name varchar not null,
credits float,
dept_id int,
foreign key (dept_id) references department(dept_id)
);

insert into courses (course_id, course_code, course_name, credits, dept_id)
values (1001, 'CS101', 'Programming Fundamentals', 4.0, 1);

select * from courses

insert into courses (course_id,course_code, course_name, credits, dept_id) values
(1002,'MA201','Calculus I',4.0,2),
(1003,'PH105','Classical Mechanics',3.0,3),
(1004,'CS205','Data Structures',4.0,1)

select * from courses

create table section(
section_id serial primary key,
course_id int,
faculty_id int,
semester varchar not null,
enrollment_id int
);

insert into section (section_id, course_id, faculty_id, semester, enrollment_id)
values (10, 1001, 103, 'Fall 2025',30);

select * from section

insert into section (section_id, course_id, faculty_id, semester, enrollment_id)values
(11, 2002, 101, 'Fall 2025', 25),  
(12, 3003, 102, 'Fall 2025', 40),  
(13, 1004, 103, 'Fall 2025', 20);

select * from section

drop table enrollments

create table enrollments(
enrollment_id int primary key,
student_id int,
section_id int,
enrollment_date varchar,
final_grade float,
foreign key (student_id) references students(student_id)
);

insert into enrollments (enrollment_id, student_id, section_id, enrollment_date, final_grade)
values(100, 5011, 10, '2025-08-15', 3.7);

select * from enrollments

insert into enrollments (enrollment_id, student_id, section_id, enrollment_date, final_grade)values
(101, 5012, 11, '2025-08-16', 3.9),  
(102, 5013, 10, '2025-08-15', 3.2),  
(103, 5014, 12, '2025-08-17', 4.0),  
(104, 5015, 13, '2025-08-18', 3.8),
(105, 5016, 11, '2025-08-16', 3.5),  
(106, 5017, 13, '2025-08-18', 3.1);

select * from enrollments

------- Department table

select * from department

select * from department as d
inner join students as s
on d.dept_id = s.dept_id

select * from department as d
left join students as s
on d.dept_id = s.dept_id

select * from department as d
right join students as s
on d.dept_id = s.dept_id

select * from faculty

select * from section

select * from department

select dept_id,dept_name from department

select sum(budget) as Sbudget,dept_name from department group by dept_name

select dept_name,faculty_id,budget from department where budget < 600000

select dept_name,sum(budget) as sumbudget from department group by dept_name order by dept_name

select * from department as d
left join students as s
on d.dept_id = s.dept_id

select dept_name ,sum(budget) as sumbudget from department as d
right join students as s
on d.dept_id = s.dept_id
group by dept_name
having sum(budget) > 250000
order by dept_name

--------- student table

select * from students

select first_name,last_name,sum(dept_id) as sdept_id from students group by first_name,last_name

select first_name,last_name,sum(dept_id) from students group by first_name,last_name order by first_name 

select first_name,last_name,sum(dept_id) from students group by first_name,last_name order by first_name limit 5

select first_name,last_name,sum(dept_id) from students group by first_name,last_name order by first_name limit 5 offset 5

select first_name as S_first_name ,* from students

update students set student_id = 5010 where student_id = '5001';

------section Table

select * from section

alter table faculty
ADD CONSTRAINT FK_faculty_section
FOREIGN KEY (faculty_id) REFERENCES section(faculty_id);

update faculty set faculty_id = 300 where faculty_id = '1001'

select * from faculty as F
left join enrollments as E
on F.faculty_id = E.enrollment_id

select * from faculty as f
left join section as s
on f.faculty_id = s.faculty_id

select * from faculty as f
right join section as s
on f.faculty_id = s.faculty_id

select * from faculty as f
right join section as s
on f.faculty_id = s.section_id

select * from faculty as f
left join section as s
on f.faculty_id = s.section_id

select * from faculty as f
right join section as s
on f.faculty_id = s.section_id
order by first_name

select * from faculty as f
right join section as s
on f.faculty_id = s.section_id
order by first_name
limit 10 offset 20

INSERT INTO faculty(faculty_id,last_name, office_no, salary)       -----check not null constraint
VALUES (101,'Gupta', 'A201', 150000);

---------------course table

select * from courses 

select * from courses as c
left join students as s
on c.dept_id = s.dept_id

select * from courses as c
right join students as s
on c.dept_id = s.dept_id

select * from courses as c
inner join students as s
on c.dept_id = s.dept_id

select * from courses where course_name = 'Data Structures' or course_name = 'World History';

-------section table

select * from section 
where enrollment_id in (30,25,40,20,60,45,70,22,80)
order by enrollment_id

update section set enrollment_id = 110 where enrollment_id = 80

select * from section as s
left join enrollments as e
on s.faculty_id = e.enrollment_id


select * from section as s
left join enrollments as e
on s.faculty_id = e.enrollment_id







