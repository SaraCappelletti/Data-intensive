--DECLARE ?sid AS INTEGER = %(i)s
--DECLARE ?minDiff AS INTEGER =%(d)s

SELECT DISTINCT cr.CourseOfferId 
FROM CourseRegistrations cr
JOIN (
	SELECT courseofferid, AVG(grade) AS avg_grade
	FROM CourseRegistrations cr
	GROUP BY courseofferid)
cravg ON cr.CourseOfferId = cravg.CourseOfferID
JOIN StudentRegistrationsToDegrees srtd ON cr.StudentRegistrationId = srtd.StudentRegistrationId
WHERE srtd.StudentId = %(i)s AND cr.Grade > cravg.avg_grade + %(d)s
ORDER BY cr.CourseOfferID