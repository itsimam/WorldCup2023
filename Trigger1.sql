/* 4)changes teams table data after matches table inserted */
DELIMITER //

CREATE TRIGGER UpdateTeamStats AFTER INSERT ON Matches
FOR EACH ROW
BEGIN
    IF NEW.Winner = NEW.HomeTeam THEN
        -- Update the winning team--
        UPDATE Teams
        SET Won = Won + 1,
            MP = MP + 1
        WHERE TeamName = NEW.HomeTeam;

        -- Update the losing team--
        UPDATE Teams
        SET Lost = Lost + 1,
            MP = MP + 1
        WHERE TeamName = NEW.OutsiderTeam;
    ELSEIF NEW.Winner = NEW.OutsiderTeam THEN
        -- Update the winning team--
        UPDATE Teams
        SET Won = Won + 1,
            MP = MP + 1
        WHERE TeamName = NEW.OutsiderTeam;

        -- Update the losing team--
        UPDATE Teams
        SET Lost = Lost + 1,
            MP = MP + 1
        WHERE TeamName = NEW.HomeTeam;
    ELSEIF NEW.Winner = 'DRAW' THEN
        -- Update for a draw--
        UPDATE Teams
        SET Draw = Draw + 1,
            MP = MP + 1
        WHERE TeamName IN (NEW.HomeTeam, NEW.OutsiderTeam);
    END IF;
END;

//

DELIMITER ;

/* INSERT INTO Matches (MatchNo, HomeTeam, OutsiderTeam, HomeGoals, OutsiderGoals, Winner, Wonby, Attendance, RefereeName) VALUES ('126', 'Argentina', 'Australia', 4, 4, 'DRAW', '-', 50000, 'Oh-Hyeon Jeong'); */
