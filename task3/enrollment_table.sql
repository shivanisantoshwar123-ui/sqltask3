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

select min(final_grade),max(final_grade),avg(final_grade),count(final_grade)from enrollments

select * from enrollments where enrollment_date between '2025-08-15' and '2026-12-31'
order by section_id,
enrollment_id

select * from enrollments as e
left join Department as d
on e.enrollment_id = d.dept_id
