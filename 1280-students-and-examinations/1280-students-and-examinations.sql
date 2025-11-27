 
 select s.student_id,s.student_name,sub.subject_name,count(e.subject_name) as attended_exams
 from Students as s
cross join subjects as sub  
left join Examinations as e using(student_id ,subject_name )

 group by s.student_id,s.student_name,sub.subject_name
 order by s.student_id,s.student_name asc