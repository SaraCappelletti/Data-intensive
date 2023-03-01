SELECT COUNT(ra.roomid) AS numberOfRooms
, co.courseofferid, co.courseid,
co.year, co.quartile,
cs.coursename, cs.coursedescription,
cs.degreeid, cs.ects,
d.dept,
d.degreedescription, d.totalects,
te.teacherid, te.teachername,
te.address, te.birthyearteacher,
te.gender, te.salary
FROM roomallocations ra
INNER JOIN courseoffers co
on co.courseofferid = ra.courseofferid
INNER JOIN courses cs
on co.courseid = cs.courseid
INNER JOIN degrees d
on cs.degreeid = d.degreeid
INNER JOIN teacherassignmentstocourses ta
on co.courseofferid = ta.courseofferid
INNER JOIN teachers
te
on te.teacherid = ta.teacherid
WHERE ra.courseofferid = '1'
GROUP BY co.courseofferid, co.courseid, co.year, co.quartile,
cs.coursename, cs.coursedescription,
cs.degreeid, cs.ects,
d.dept,
d.degreedescription, d.totalects,
te.teacherid, te.teachername,
te.address, te.birthyearteacher,
te.gender, te.salary