WITH all_ids AS (
   SELECT requester_id AS id 
   FROM RequestAccepted
   UNION ALL
   SELECT accepter_id AS id
   FROM RequestAccepted)

select id,count(id)as num from all_ids
group by id
order by count(id) desc
limit 1;