COPY Degrees 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\Degrees.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Students 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\Students.table' 
WITH DELIMITER ',' CSV HEADER;

COPY StudentRegistrationsToDegrees 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\StudentRegistrationsToDegrees.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Teachers 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\Teachers.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Courses 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\Courses.table' 
WITH DELIMITER ',' CSV HEADER;

COPY CourseOffers 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\CourseOffers.table' 
WITH DELIMITER ',' CSV HEADER;

COPY TeacherAssignmentsToCourseOffers 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\TeacherAssignmentsToCourseOffers.table' 
WITH DELIMITER ',' CSV HEADER;

COPY Rooms 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\Rooms.table' 
WITH DELIMITER ',' CSV HEADER;

COPY RoomAllocations
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\RoomAllocations.table' 
WITH DELIMITER ',' CSV HEADER;

COPY CourseRegistrations 
FROM 'C:\Users\sarac\Desktop\Programmazione\Erasmus\Data-intensive systems and applications 2ID70\MS1\UniversityDatabase\CourseRegistrations.table' 
WITH DELIMITER ',' CSV HEADER;