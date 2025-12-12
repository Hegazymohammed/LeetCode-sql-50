# Write your MySQL query statement below

select name as results
from (
 select name,count(rating) as count
 from MovieRating
 join Users using (user_id)
 group by name
 order by count desc , name asc
 limit 1
) as results
union all

select title as results
from (
    select title,avg(rating) as avg
    from MovieRating
    join Movies using(movie_id)
    where created_at  between  '2020-02-1' and  '2020-02-29'
    group by title
    order by   avg desc, title asc
    limit 1
    
) as results
