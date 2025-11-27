# Write your MySQL query statement below
select s.user_id,round(sum(case when action='confirmed' then 1 else 0 end)/sum(case when action='confirmed' then 1 else 1 end),2) as confirmation_rate
from Signups as s
left join Confirmations as c using(user_id)
group by s.user_id