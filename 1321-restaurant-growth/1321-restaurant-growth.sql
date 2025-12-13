# Write your MySQL query statement below

select visited_on,amount,average_amount
from (
select visited_on , case when date_sub(c1.visited_on,interval 6 day) in (select visited_on from Customer) 
                            then (select sum(amount) from customer c where c.visited_on between date_sub(c1.visited_on,interval 6 day) and c1.visited_on ) end as amount
                            ,
case when date_sub(c1.visited_on,interval 6 day)  in (select visited_on from Customer) 
                            then round( (select sum(amount)/7 from customer c where c.visited_on between date_sub(c1.visited_on,interval 6 day) and c1.visited_on),2)  end as average_amount

 from Customer as c1
 
group by visited_on
) as analysis_table
where amount is not null
order by visited_on