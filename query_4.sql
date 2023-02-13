SELECT DISTINCT courseoffers.courseofferid, courseoffers.year
FROM courseoffers

INNER JOIN roomallocations
ON courseoffers.courseofferid = roomallocations.courseofferid
INNER JOIN rooms
ON roomallocations.roomid = rooms.roomid
INNER JOIN courseregistrations
ON courseoffers.courseofferid = courseregistrations.courseofferid

JOIN (
	SELECT courseofferid, COUNT(studentregistrationid) AS cnt
	FROM courseregistrations
	GROUP BY courseofferid
) cr
ON courseoffers.courseofferid = cr.courseofferid

WHERE courseoffers.year = 2001 --Add %(y)s
AND courseoffers.quartile = 3 --Add %(q)s
AND cr.cnt > rooms.roomsize

ORDER BY courseoffers.courseofferid ASC;
