SELECT 
  Teachers.BirthyearTeacher, 
  Teachers.Gender, 
  Teachers.Salary, 
  AVG(CourseRegistrations.Grade) AS AverageGrade
FROM 
  Teachers
  JOIN TeacherAssignmentsToCourses 
    ON Teachers.TeacherId = TeacherAssignmentsToCourses.TeacherId
  JOIN CourseOffers 
    ON TeacherAssignmentsToCourses.CourseOfferId = CourseOffers.CourseOfferId
  JOIN CourseRegistrations 
    ON CourseOffers.CourseOfferId = CourseRegistrations.CourseOfferId
WHERE 
  Teachers.Salary <= 5000
GROUP BY 
  CUBE(
    Teachers.BirthyearTeacher, 
    Teachers.Gender, 
    Teachers.Salary
  )
ORDER BY 
  Teachers.BirthyearTeacher, 
  Teachers.Gender, 
  Teachers.Salary
