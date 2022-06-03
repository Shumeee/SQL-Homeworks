-- Task 1
GO
	DECLARE @FirstName NVARCHAR(255)
	SET @FirstName = 'Antonio';
	SELECT * FROM [Student] WHERE FirstName = @FirstName;
-- Task 2
GO
	DECLARE @FemaleStudents TABLE (StudentId INT, StudentName NVARCHAR(255), DateOfBirth date)
	INSERT INTO @FemaleStudents SELECT [ID], FirstName, DateOfBirth FROM [Student] WHERE Gender = 'F';
	SELECT * FROM @FemaleStudents;
-- Task 3
CREATE TABLE #MaleStudents (LastName NVARCHAR(255), EnrolledDate DATE)
INSERT INTO #MaleStudents SELECT LastName, EnrolledDate FROM [Student] WHERE FirstName LIKE 'A%';
SELECT * FROM #MaleStudents WHERE LEN(LastName) = 7;
-- Task 4
SELECT FirstName, LastName, SUBSTRING(FirstName, 1, 3) AS First3FirstNameLetters, SUBSTRING(LastName, 1, 3) AS First3LastNameLetters FROM [Teacher] WHERE LEN(FirstName) < 5 ORDER BY FirstName, LastName;




