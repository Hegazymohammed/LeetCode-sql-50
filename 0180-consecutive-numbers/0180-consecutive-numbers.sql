# Write your MySQL query statement below
-- select l1.num as ConsecutiveNums
-- from Logs as l1
-- join Logs as l2 on l1.id=l2.id+1 and l1.num=l2.num
-- join Logs as l3 on l3.id=l2.id+2 and l3.num=l2.num
-- group by l1.id
-- having count(l1.num)>=3
SELECT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1 AND l1.num = l2.num
JOIN Logs l3 ON l2.id = l3.id - 1 AND l2.num = l3.num
GROUP BY l1.num
