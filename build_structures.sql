-- Creates indices that increase performance 
CREATE INDEX idx_co_year_quartile ON courseoffers (year, quartile);
CREATE INDEX idx_co_courseofferid ON courseoffers (courseofferid);
CREATE INDEX idx_ra_courseofferid_roomid ON roomallocations (courseofferid, roomid);
CREATE INDEX idx_cr_courseofferid_studentregistrationid ON courseregistrations (courseofferid, studentregistrationid);
CREATE INDEX idx_ta_teacherid_courseofferid ON teacherassignmentstocourses (teacherid, courseofferid);
CREATE INDEX idx_te_teacherid ON teachers (teacherid)