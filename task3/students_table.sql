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

select first_name,last_name,sum(dept_id) as sdept_id from students group by first_name,last_name

select first_name,last_name,sum(dept_id) from students group by first_name,last_name order by first_name 

select first_name,last_name,sum(dept_id) from students group by first_name,last_name order by first_name limit 5

select first_name,last_name,sum(dept_id) from students group by first_name,last_name order by first_name limit 5 offset 5

select first_name as S_first_name ,* from students

update students set student_id = 5010 where student_id = '5001';

select * from students as s
left join faculty as f
on s.first_name = f.first_name

select * from students as s
right join faculty as f
on s.first_name = f.first_name

select * from students where student_id between 5015 and 5030




