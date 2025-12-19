# Write your MySQL query statement below
DELETE p1 FROM Person p1
     

join person p2    on(p1.Email = p2.Email AND p1.Id > p2.Id)