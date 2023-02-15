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
WHERE srtd.StudentId = 477 AND cr.Grade > cravg.avg_grade + 3.5
ORDER BY cr.CourseOfferID