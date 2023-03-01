--DECLARE ?sid AS INTEGER = %(i)s
--DECLARE ?minDiff AS INTEGER =%(d)s

SELECT CourseOfferId
FROM CourseRegistrationWithAvgGrade
WHERE StudentId = %(i)s AND Grade > avg_grade + 5
ORDER BY CourseOfferId;