create table section(
section_id serial primary key,
course_id int,
faculty_id int,
semester varchar not null,
enrollment_id int
);

insert into section (section_id, course_id, faculty_id, semester, enrollment_id)
values (10, 1001, 103, 'Fall 2025',30);

select * from department 

select * from section

select * from enrollments

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