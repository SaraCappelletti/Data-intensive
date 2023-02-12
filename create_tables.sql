CREATE UNLOGGED TABLE Degrees(
	DegreeId int UNIQUE CHECK (DegreeID > 0), 
	Dept varchar(50), 
	DegreeDescription varchar(200), 
	TotalECTS int CHECK (TotalECTS <= 200),
	PRIMARY KEY(DegreeId)
);

CREATE UNLOGGED TABLE Students(
	StudentId int UNIQUE CHECK (StudentID > 0), 
	StudentName varchar(50), 
	Address varchar(200), 
	BirthyearStudent int CHECK (BirthyearStudent <= 3000), 
	Gender char CHECK (Gender = 'M' or 'F'),
	PRIMARY KEY(StudentId)
);

CREATE UNLOGGED TABLE StudentRegistrationsToDegrees(
	StudentRegistrationId int UNIQUE CHECK (StudentRegistrationID > 0), 
	StudentId int, 
	DegreeId int, 
	RegistrationYear int CHECK (RegistrationYear <= 3000),
	PRIMARY KEY(StudentRegistrationId),
	CONSTRAINT fk_students
		FOREIGN KEY(StudentId)
		REFERENCES Students(StudentId),
	CONSTRAINT fk_degrees
		FOREIGN KEY(DegreeId)
		REFERENCES Degrees(DegreeId)
);

CREATE UNLOGGED TABLE Teachers(
	TeacherId int UNIQUE CHECK (TeacherId > 0), 
	TeacherName varchar(50), 
	Address varchar(200), 
	BirthyearTeacher int CHECK (BirthyearTeacher <= 3000), 
	Gender char CHECK (Gender = 'M' or 'F'), 
	Salary int CHECK (Salary >= 0),
	PRIMARY KEY(TeacherId)
);

CREATE UNLOGGED TABLE Courses(
	CourseId int UNIQUE CHECK (CourseId > 0), 
	CourseName varchar(50), 
	CourseDescription varchar(200), 
	DegreeId int, 
	ECTS int CHECK (ECTS between 1 and 7),
	PRIMARY KEY(CourseId),
	CONSTRAINT fk_degrees
		FOREIGN KEY(DegreeId)
		REFERENCES Degrees(DegreeId)

);

CREATE UNLOGGED TABLE CourseOffers(
	CourseOfferId int UNIQUE CHECK (CourseOfferId > 0), 
	CourseId int, 
	Year int CHECK (Year <= 3000), 
	Quartile int CHECK (Quartile between 1 and 4), 
	PRIMARY KEY(CourseOfferId),
	CONSTRAINT fk_courses
		FOREIGN KEY(CourseId)
		REFERENCES Courses(CourseId)
);

CREATE UNLOGGED TABLE TeacherAssignmentsToCourseOffers(
	CourseOfferId int, 
	TeacherId int,
	CONSTRAINT fk_courseOffers
		FOREIGN KEY(CourseOfferId)
		REFERENCES CourseOffers(CourseOfferId),
	CONSTRAINT fk_teachers
		FOREIGN KEY(TeacherId)
		REFERENCES Teachers(TeacherId)
);

CREATE UNLOGGED TABLE Rooms(
	RoomId int UNIQUE CHECK (RoomId > 0), 
	RoomBuilding varchar (50), 
	RoomSize int CHECK (RoomSize >= 0),
	PRIMARY KEY(RoomId)
);

CREATE UNLOGGED TABLE RoomAllocations(
	RoomId int, 
	CourseOfferId int,
	CONSTRAINT fk_rooms
		FOREIGN KEY(RoomId)
		REFERENCES Rooms(RoomId),
	CONSTRAINT fk_courseOffers
		FOREIGN KEY(CourseOfferId)
		REFERENCES CourseOffers(CourseOfferId)
);

CREATE UNLOGGED TABLE CourseRegistrations(
	CourseOfferId int, 
	StudentRegistrationId int, 
	Grade int CHECK (Grade between 1 and 10),
	CONSTRAINT fk_courseOffers
		FOREIGN KEY(CourseOfferId)
		REFERENCES CourseOffers(CourseOfferId),
	CONSTRAINT fk_studentRegistrationsToDegrees
		FOREIGN KEY(StudentRegistrationId)
		REFERENCES StudentRegistrationsToDegrees(StudentRegistrationId)
);