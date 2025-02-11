/* 2) Procedure using in parameter to insert players */
DELIMITER //
CREATE PROCEDURE AddPlayer(IN JNo VARCHAR(2), IN Ption CHAR(2), IN fName VARCHAR(30), IN lName VARCHAR(30), IN G INT, IN C INT, IN TName VARCHAR(25))
BEGIN
    	INSERT INTO Players (JerseyNo, Position, firstName, lastName, Goals, CAPS, TeamName)
    	VALUES (JNo, Ption, fName, lName, G, C, TName);
END;
//
DELIMITER ;

/* CALL AddPlayer(69, 'GK', 'Rawad', 'Hassan', 99, 199, 'Morocco'); */
