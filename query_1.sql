/*Student administration wants to contact all students that were born in a 
specified year (parameter %(y)s denotes the year), were registered to a 
specified degree (parameter %(d)s denotes the degree id), and as part of the 
course work for that particular degree they attend(ed) any course offer of a 
specific course (parameter %(c)s denotes the course id). The query should return 
only the student ids of the students that satisfy this description. The results 
should be ordered by student id and contain no duplicates. The query will be 
executed 1000 times with different parameter values. The correct answer should 
adhere to the following schema: [StudentId int].*/

SELECT DISTINCT s.StudentId
FROM Degrees d
JOIN StudentRegistrationsToDegrees srtd 
ON d.DegreeId = srtd.DegreeID
JOIN Students s 
ON s.StudentId = srtd.StudentId 
JOIN CourseRegistrations cr
ON cr.StudentRegistrationId = srtd.StudentRegistrationId
JOIN CourseOffers co
ON co.CourseOfferId = cr.CourseOfferId
WHERE s.BirthyearStudent = %(y)s
AND d.DegreeId = %(d)s
AND co.CourseId = %(c)s
ORDER BY s.StudentId