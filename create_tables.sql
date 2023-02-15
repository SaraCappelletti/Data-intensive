CREATE UNLOGGED TABLE Degrees(
	DegreeId int, 
	Dept varchar(50), 
	DegreeDescription varchar(200), 
	TotalECTS int,
	PRIMARY KEY(DegreeId)
);

CREATE UNLOGGED TABLE Students(
	StudentId int, 
	StudentName varchar(50), 
	Address varchar(200), 
	BirthyearStudent int, 
	Gender char,
	PRIMARY KEY(StudentId)
);

CREATE UNLOGGED TABLE StudentRegistrationsToDegrees(
	StudentRegistrationId int, 
	StudentId int, 
	DegreeId int, 
	RegistrationYear int,
	PRIMARY KEY(StudentRegistrationId)
);

CREATE UNLOGGED TABLE Teachers(
	TeacherId int, 
	TeacherName varchar(50), 
	Address varchar(200), 
	BirthyearTeacher int, 
	Gender char, 
	Salary int,
	PRIMARY KEY(TeacherId)
);

CREATE UNLOGGED TABLE Courses(
	CourseId int, 
	CourseName varchar(50), 
	CourseDescription varchar(200), 
	DegreeId int, 
	ECTS int,
	PRIMARY KEY(CourseId)

);

CREATE UNLOGGED TABLE CourseOffers(
	CourseOfferId int, 
	CourseId int, 
	Year int, 
	Quartile int, 
	PRIMARY KEY(CourseOfferId)
);

CREATE UNLOGGED TABLE TeacherAssignmentsToCourses(
	CourseOfferId int, 
	TeacherId int
);

CREATE UNLOGGED TABLE Rooms(
	RoomId int, 
	RoomBuilding varchar (50), 
	RoomSize int,
	PRIMARY KEY(RoomId)
);

CREATE UNLOGGED TABLE RoomAllocations(
	RoomId int, 
	CourseOfferId int
);

CREATE UNLOGGED TABLE CourseRegistrations(
	CourseOfferId int, 
	StudentRegistrationId int, 
	Grade int
);