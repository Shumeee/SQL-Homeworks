
-- Task 1
SELECT COUNT(Grade) AS GradesPerTeacher FROM [Grade] GROUP BY TeacherID;
-- Task 2 
SELECT COUNT(Grade) AS GradesPerTeacher FROM [Grade] WHERE StudentID < 100 GROUP BY StudentID;
-- Task 3
SELECT MAX(Grade) AS HighestGrade FROM [Grade];
SELECT AVG(Grade) AS AverageGrade FROM [Grade];
-- Task 4
SELECT COUNT(Grade) AS GradesPerTeacherAbove200 FROM [Grade] GROUP BY TeacherID HAVING COUNT(Grade) > 200;
-- Task 5
SELECT StudentID, FirstName, LastName, AVG(Grade) AS MaxGradeEqualToAverageGrade FROM [Grade] JOIN [Student] ON StudentID = [Student].ID GROUP BY StudentID, FirstName, LastName HAVING MAX(Grade) = AVG(Grade);
-- Task 6
CREATE OR ALTER VIEW vv_StudentGrades AS
SELECT StudentID, FirstName, LastName, COUNT(Grade) AS GradePerStudent FROM [Grade] JOIN [Student] ON StudentID = [Student].ID
GROUP BY StudentID, FirstName, LastName

SELECT * FROM vv_StudentGrades ORDER BY GradePerStudent DESC;




SELECT StudentID, FirstName, LastName, AVG(Grade) AS MaxGradeEqualToAverageGrade FROM [Grade] JOIN [Student] ON StudentID = [Student].ID GROUP BY StudentID, FirstName, LastName HAVING MAX(Grade) = AVG(Grade);

