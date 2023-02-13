SELECT DISTINCT courseoffers.courseofferid
FROM courseoffers
INNER JOIN roomallocations
ON courseoffers.courseofferid = roomallocations.courseofferid
INNER JOIN rooms
ON roomallocations.roomid = rooms.roomid
INNER JOIN courseregistrations
ON courseoffers.courseofferid = courseregistrations.courseofferid

WHERE courseoffers.year = 2001 --Add %(y)s
AND courseoffers.quartile = 3 --Add %(q)s

AND (
	SELECT COUNT(courseregistrations.studentregistrationid) AS cnt
	FROM courseregistrations
	WHERE courseoffers.courseofferid = courseregistrations.courseofferid --Add %d	
) > rooms.roomsize;

ORDER BY courseoffers.courseofferid ASC
