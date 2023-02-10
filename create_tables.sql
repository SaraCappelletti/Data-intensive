CREATE TABLE Degrees(DegreeId int CHECK (DegreeID >= 0), Dept varchar(50), DegreeDescription varchar(200), TotalECTS int CHECK (TotalECTS <= 200));
