-- Creates indices that increase performance query_4
CREATE INDEX idx_courseoffers_year_quartile ON courseoffers (year, quartile);
CREATE INDEX idx_courseoffers_courseofferid ON courseoffers (courseofferid);
CREATE INDEX idx_roomallocations_courseofferid_roomid ON roomallocations (courseofferid, roomid);
CREATE INDEX idx_rooms_roomid ON rooms (roomid);
CREATE INDEX idx_courseregistrations_courseofferid_studentregistrationid ON courseregistrations (courseofferid, studentregistrationid);


