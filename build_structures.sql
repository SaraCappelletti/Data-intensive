-- Creates indices that increase performance 
CREATE INDEX idx_co_year_quartile ON courseoffers (year, quartile);
CREATE INDEX idx_co_courseofferid ON courseoffers (courseofferid);
CREATE INDEX idx_ra_courseofferid_roomid ON roomallocations (courseofferid, roomid);
CREATE INDEX idx_cr_courseofferid_studentregistrationid ON courseregistrations (courseofferid, studentregistrationid);
CREATE INDEX idx_ta_teacherid_courseofferid ON teacherassignmentstocourses (teacherid, courseofferid);
CREATE INDEX idx_te_teacherid ON teachers (teacherid);

CREATE OR REPLACE VIEW CourseRegistrationWithAvgGrade AS
SELECT DISTINCT cr.CourseOfferId 
FROM CourseRegistrations cr
JOIN (
	SELECT courseofferid, AVG(grade) AS avg_grade
	FROM CourseRegistrations cr
	GROUP BY courseofferid
) cravg ON cr.CourseOfferId = cravg.CourseOfferID
JOIN StudentRegistrationsToDegrees srtd ON cr.StudentRegistrationId = srtd.StudentRegistrationId;

CREATE MATERIALIZED VIEW CoursesWithMoreStudentsThanRoom AS
SELECT courseoffers.courseofferid, courseoffers.year, courseoffers.quartile
FROM courseoffers
INNER JOIN (
	SELECT roomallocations.courseofferid, SUM(roomsize) AS cap
	FROM rooms, roomallocations
	WHERE rooms.roomid = roomallocations.roomid
	GROUP BY roomallocations.courseofferid
) ro ON ro.courseofferid = courseoffers.courseofferid
INNER JOIN (
    SELECT courseofferid, COUNT(studentregistrationid) AS cnt
    FROM courseregistrations
    GROUP BY courseofferid
) cr ON courseoffers.courseofferid = cr.courseofferid
WHERE cr.cnt > ro.cap;
