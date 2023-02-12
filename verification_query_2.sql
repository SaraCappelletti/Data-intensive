SELECT CAST(AVG(CAST(cr.grade as float)) as float)
FROM courseregistrations cr
JOIN students s
on s.studentid = cr.studentregistrationid
WHERE s.studentid = 3