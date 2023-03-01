COPY Degrees 
FROM '/opt/data/Degrees.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Students 
FROM '/opt/data/Students.table' 
WITH DELIMITER ',' CSV HEADER;


COPY StudentRegistrationsToDegrees 
FROM '/opt/data/StudentRegistrationsToDegrees.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Teachers 
FROM '/opt/data/Teachers.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Courses 
FROM '/opt/data/Courses.table' 
WITH DELIMITER ',' CSV HEADER;

COPY CourseOffers 
FROM '/opt/data/CourseOffers.table' 
WITH DELIMITER ',' CSV HEADER;

COPY TeacherAssignmentsToCourses 
FROM '/opt/data/TeacherAssignmentsToCourses.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Rooms 
FROM '/opt/data/Rooms.table' 
WITH DELIMITER ',' CSV HEADER;

COPY RoomAllocations
FROM '/opt/data/RoomAllocations.table' 
WITH DELIMITER ',' CSV HEADER;

COPY CourseRegistrations 
FROM '/opt/data/CourseRegistrations.table' 
WITH DELIMITER ',' CSV HEADER;

