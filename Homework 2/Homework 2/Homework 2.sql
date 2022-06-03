select * from Student
select * from Course
select * from AchievementType
select * from Teacher
select * from Grade
select * from GradeDetails;

-- Task 1
SELECT * FROM [Student] WHERE FirstName = 'Antonio';
-- Task 2
SELECT * FROM [Student] WHERE DateOfBirth > '01.01.1999';
-- Task 3
SELECT * FROM [Student] WHERE LastName LIKE 'J%' AND EnrolledDate LIKE '1998.01%';
-- Task 4
SELECT * FROM [Student] ORDER BY FirstName ASC; 
-- Task 5
SELECT [Teacher].[LastName], [Student].[LastName] FROM [Student] FULL OUTER JOIN [Teacher] ON [Student].LastName != [Teacher].LastName;
-- Task 6
ALTER TABLE [Grade]
ADD CONSTRAINT FK_CourseId
FOREIGN KEY (CourseID) REFERENCES Course(ID);

ALTER TABLE [Grade]
ADD CONSTRAINT FK_StudentID
FOREIGN KEY (StudentID) REFERENCES Student(ID);

ALTER TABLE [Grade]
ADD CONSTRAINT FK_TeacherID
FOREIGN KEY (TeacherID) REFERENCES Teacher(ID);

ALTER TABLE [GradeDetails]
ADD CONSTRAINT FK_GradeID
FOREIGN KEY (GradeID) REFERENCES Grade(ID);

ALTER TABLE [GradeDetails]
ADD CONSTRAINT FK_AchievementTypeID
FOREIGN KEY (AchievementTypeID) REFERENCES AchievementType(ID);
-- Task 7
SELECT [Course].[Name], [AchievementType].[Name] FROM [Course] CROSS JOIN [AchievementType];
