CREATE MATERIALIZED VIEW my_view AS
SELECT DISTINCT courseoffers.courseofferid, courseoffers.year, courseoffers.quartile
FROM courseoffers
INNER JOIN roomallocations ON courseoffers.courseofferid = roomallocations.courseofferid
INNER JOIN rooms ON roomallocations.roomid = rooms.roomid
INNER JOIN courseregistrations ON courseoffers.courseofferid = courseregistrations.courseofferid
JOIN (
    SELECT courseofferid, COUNT(studentregistrationid) AS cnt
    FROM courseregistrations
    GROUP BY courseofferid
) cr ON courseoffers.courseofferid = cr.courseofferid
AND cr.cnt > rooms.roomsize
ORDER BY courseoffers.courseofferid ASC; --Takes around a minute and 10 seconds.



SELECT DISTINCT courseofferid, year
FROM my_view
WHERE year = 2001
AND quartile = 3
ORDER BY courseofferid ASC; --Near Instant execution time
