ALTER PROCEDURE spGetMostBorrowedAuthor 
(@Year int)
AS

BEGIN
	SELECT count(a.BookID) AS BookCount,year(a.Date_Borrowed) AS YearBorrowed,b.AuthorID 
		INTO #tmp1
	FROM Member_Books a INNER JOIN Book_Author b
	ON a.BookID=b.BookID
	WHERE year(a.Date_Borrowed) = @Year
	GROUP BY year(a.Date_Borrowed),b.AuthorID


	SELECT top 5 t.AuthorID, a.Author_Name,BookCount 
	FROM #tmp1 t
	INNER JOIN Authors a
	ON t.AuthorID = a.AuthorID
	ORDER BY BookCount DESC

END