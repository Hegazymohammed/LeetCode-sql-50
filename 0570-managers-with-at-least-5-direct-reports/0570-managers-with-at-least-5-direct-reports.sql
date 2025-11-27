# Write your MySQL query statement below


select e.name
from Employee as e
where (
     select count(e.id)
     from Employee e1
     where e1.managerId=e.id
     
)>=5
group by e.id