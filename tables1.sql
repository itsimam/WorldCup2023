/*Creating Referees Table*/
CREATE TABLE Referees(
    RefereeName VARCHAR(50) NOT NULL,
    Age INT,
    PRIMARY KEY(RefereeName)
);

/*Creating Teams Table*/
CREATE TABLE Teams(
    	TeamName VARCHAR(25) NOT NULL,
   	Won INT,
   	Draw INT,
    	Lost INT,
    	MP INT,
    	PRIMARY KEY(TeamName)
    	);

/*Creating Matches Table*/
CREATE TABLE Matches(
    	MatchNo CHAR(3) NOT NULL,
    	Stage CHAR(20),
    	HomeTeam VARCHAR(20) NOT NULL,
    	OutsiderTeam VARCHAR(20) NOT NULL,
    	HomeGoals INT NOT NULL,
    	OutsiderGoals INT NOT NULL,
   	Winner VARCHAR(20) NOT NULL,
   	Wonby CHAR(20),
   	Attendance INT NOT NULL,
   	RefereeName VARCHAR(50) NOT NULL,
   	PRIMARY KEY(MatchNo),
   	FOREIGN KEY (RefereeName) REFERENCES Referees(RefereeName)
    	);

/*Creating Stadiums Table*/  
CREATE TABLE Stadiums(
    	StadiumName VARCHAR(30) NOT NULL,
    	Location CHAR(20) NOT NULL,
    	Capacity INT NOT NULL,
    	PRIMARY KEY(StadiumName)
    	);

/*Creating Host Table*/ 
CREATE TABLE Host(
    	GameDate DATE NOT NULL,
    	GameTime TIME NOT NULL,
    	MatchNo CHAR(3) NOT NULL,
    	TeamName CHAR(25) NOT NULL,
    	StadiumName CHAR(30) NOT NULL,
    	FOREIGN KEY (TeamName) REFERENCES Teams(TeamName),
    	FOREIGN KEY (MatchNo) REFERENCES Matches(MatchNo),
    	FOREIGN KEY (StadiumName) REFERENCES Stadiums(StadiumName)
    	);

/*Creating Managers Table*/
CREATE TABLE Managers(
    ManagerName VARCHAR(40) NOT NULL,
    Nationality VARCHAR(25),
    TeamName VARCHAR(25) NOT NULL,
    PRIMARY KEY(ManagerName),
    FOREIGN KEY (TeamName) REFERENCES Teams(TeamName) ON DELETE CASCADE
);

/*Creating Players Table*/
CREATE TABLE Players (
    JerseyNo INT NOT NULL,
    Position CHAR(2),
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30),
    Goals INT,
    CAPS INT,
    TeamName VARCHAR(25) NOT NULL,
    PRIMARY KEY (JerseyNo, firstName),
    FOREIGN KEY (TeamName) REFERENCES Teams(TeamName) ON DELETE CASCADE
);

/*Creating Awards Table*/
CREATE TABLE Awards (
    JerseyNo INT,
    firstName VARCHAR(30),
    TeamName VARCHAR(25) NOT NULL,
    AwardName VARCHAR(40) NOT NULL,
    PreviousWinner VARCHAR(30),
    PRIMARY KEY (AwardName),
    FOREIGN KEY (JerseyNo, firstName) REFERENCES Players(JerseyNo, firstName) ON DELETE SET NULL,
    FOREIGN KEY (TeamName) REFERENCES Teams(TeamName)
);

