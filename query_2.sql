--CREATE MATERIALIZED VIEW gradeaverages(average, courseofferid) as 
--	SELECT AVG(cr.grade), cr.courseofferid
--	FROM courseregistrations cr
--	GROUP BY cr.courseofferid;
SELECT ta.teacherid, te.teachername
FROM teacherassignmentstocourses ta
JOIN gradeaverages ga
on ga.courseofferid = ta.courseofferid
JOIN teachers te
on te.teacherid = ta.teacherid
GROUP BY ta.teacherid, te.teachername
--Do not have to check if teachers at least 2 courses,
--as those that do will have max(avg) - min(avg) = 0 < %(p)s
HAVING %(p)s < MAX(ga.average) - 
MIN(ga.average) AND COUNT(ta.teacherid) > 1
;