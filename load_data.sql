COPY Degrees 
FROM '/opt/data/Degrees.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Degrees;

COPY Students 
FROM '/opt/data/Students.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Students;


COPY StudentRegistrationsToDegrees 
FROM '/opt/data/StudentRegistrationsToDegrees.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE StudentRegistrationsToDegrees;

COPY Teachers 
FROM '/opt/data/Teachers.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Teachers;

COPY Courses 
FROM '/opt/data/Courses.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Courses;

COPY CourseOffers 
FROM '/opt/data/CourseOffers.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE CourseOffers;

COPY TeacherAssignmentsToCourses 
FROM '/opt/data/TeacherAssignmentsToCourses.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE TeacherAssignmentsToCourses;

COPY Rooms 
FROM '/opt/data/Rooms.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE Rooms;

COPY RoomAllocations
FROM '/opt/data/RoomAllocations.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE RoomAllocations;

COPY CourseRegistrations 
FROM '/opt/data/CourseRegistrations.table' 
WITH DELIMITER ',' CSV HEADER;
ANALYZE CourseRegistrations;

