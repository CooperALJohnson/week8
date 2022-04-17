select titles.title as Title , count(employees.emp_no) as Count from titles 
inner join  employees on titles.emp_no = employees.emp_no
where birth_date > '1965-01-01'
group by titles.title;

select d.dept_name as "Department", avg(s.salary) as "Average Salary" from departments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no
group by d.dept_name;

select sum(salaries.salary) as Total, departments.dept_name from salaries
inner join dept_emp on salaries.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = "Marketing" && salaries.from_date >= '1990-01-01' && salaries.to_date <= '1993-01-01';