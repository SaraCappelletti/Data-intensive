SELECT courseofferid
FROM CoursesWithMoreStudentsThanRoom
WHERE year = %(y)s 
AND quartile = %(q)s 
ORDER BY courseofferid ASC; 
