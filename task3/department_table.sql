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

