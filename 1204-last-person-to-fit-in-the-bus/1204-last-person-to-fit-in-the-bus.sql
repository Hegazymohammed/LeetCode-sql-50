-- # Write your MySQL query statement below

-- select queue.person_name
-- from Queue

-- where (person_id,person_name) in (
select person_name
from (    
select  person_id,person_name,(
    select sum(weight) from Queue 
    where turn<=q1.turn) as total_weight
from Queue q1
group by person_id
having total_weight<=1000
order by total_weight desc
limit 1
) as result
 

 
