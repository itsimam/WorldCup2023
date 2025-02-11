/* 1) Procedure using both in and out parameter resulting the number of team wins */
DELIMITER //

CREATE PROCEDURE TeamWins(IN TName VARCHAR(25), OUT Wins INT)
BEGIN
    SELECT Won INTO Wins
    FROM Teams
    WHERE TeamName = TName;
END //

DELIMITER ;


/* CALL TeamWins('Spain', @result); SELECT @result; */
