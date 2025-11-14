create table faculty(
faculty_id int primary key,
first_name varchar not null,
last_name varchar,
office_no varchar,
salary float
);

INSERT INTO faculty(faculty_id, first_name, last_name, office_no, salary)
VALUES (101, 'Anil','Gupta', 'A201', 150000);

select * from enrollments

select * from faculty 

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

