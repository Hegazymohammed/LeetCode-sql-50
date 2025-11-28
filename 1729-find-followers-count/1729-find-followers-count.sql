# Write your MySQL query statement below
select f.user_id,(
      select count(follower_id)
      from Followers as f1
      where f1.user_id=f.user_id
)as followers_count
from Followers as f
group by user_id
order by user_id