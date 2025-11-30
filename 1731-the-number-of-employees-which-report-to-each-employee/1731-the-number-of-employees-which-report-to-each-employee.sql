# Write your MySQL query statement below
 select e.employee_id,e.name,count(e1.reports_to) as reports_count,round(avg(e1.age))as average_age
 from Employees as e
 join Employees as e1 on e.employee_id=e1.reports_to
 group by e.employee_id,name
 order by employee_id