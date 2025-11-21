# Write your MySQL query statement below
-- i have Employees Every one can belongs to multiple department if the employee is belonging to one Department primary flag is N

select employee_id,department_id

from Employee as e
where primary_flag='Y' or
(
    select count(e1.department_id)
    from Employee as e1
    where e1.employee_id=e.employee_id
)=1