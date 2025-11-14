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

insert into courses (course_id,credits, dept_id)      ------ check coursecode , course_name not null constraint
values (8020, 4.0, 1);

select * from courses
where dept_id between 20 and 50
order by course_id

select * from courses

select * from students

select * from enrollments

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



