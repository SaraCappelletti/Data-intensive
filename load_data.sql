COPY Degrees 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\Degrees.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Degrees;

COPY Students 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\Students.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Students;


COPY StudentRegistrationsToDegrees 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\StudentRegistrationsToDegrees.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE StudentRegistrationsToDegrees;

COPY Teachers 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\Teachers.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Teachers;

COPY Courses 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\Courses.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Courses;

COPY CourseOffers 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\CourseOffers.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE CourseOffers;

COPY TeacherAssignmentsToCourses 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\TeacherAssignmentsToCourses.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE TeacherAssignmentsToCourses;

COPY Rooms 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\Rooms.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Rooms;

COPY RoomAllocations
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\RoomAllocations.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE RoomAllocations;

COPY CourseRegistrations 
FROM 'C:\Users\20202687\Desktop\2ID70\MS1Git\Data\CourseRegistrations.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE CourseRegistrations;

