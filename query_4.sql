CREATE MATERIALIZED VIEW my_view AS
SELECT DISTINCT courseoffers.courseofferid, courseoffers.year, courseoffers.quartile
FROM courseoffers
INNER JOIN roomallocations ON courseoffers.courseofferid = roomallocations.courseofferid
INNER JOIN rooms ON roomallocations.roomid = rooms.roomid
JOIN (
    SELECT courseofferid, COUNT(studentregistrationid) AS cnt
    FROM courseregistrations
    GROUP BY courseofferid
) cr ON courseoffers.courseofferid = cr.courseofferid
AND cr.cnt > rooms.roomsize
ORDER BY courseoffers.courseofferid ASC; --Takes around a minute and 10 seconds.


SELECT DISTINCT courseofferid, year
FROM my_view
WHERE year = %(y)s --Add %(y)s
AND quartile = %(q)s --Add %(q)s
ORDER BY courseofferid ASC; -- Takes around 0.05 seconds

--Ways to improve performance
--1. Project only the columns you need
--2. Filter early
--3. Make another materialized view
--4. Use indexes
--5. Remove distinct
