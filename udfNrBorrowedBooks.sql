USE [PLCS]
GO

/****** Object:  UserDefinedFunction [dbo].[udfNrBorrowedBooks]    Script Date: 8/18/2020 2:56:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[udfNrBorrowedBooks](
    @MemberID INT,
    @MonthName INT
)
RETURNS int
AS 



BEGIN
declare @BookCount int
    set @BookCount = (
	Select	count(BookID) AS BookCount 
	FROM Member_Books 
	WHERE month(Date_Borrowed) = @MonthName
	and CardID = @MemberID)

	RETURN @BookCount
	
END;
GO


