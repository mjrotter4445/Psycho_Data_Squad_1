-- Creating tables GroupProject
-- Creating tables GroupProject
CREATE TABLE cleaning3 (
    Job_Title VARCHAR(275) NOT NULL,
    Job_Description VARCHAR(20000) NOT NULL,
    Rating Float(3),
    Company_Name VARCHAR(100), --NOT NULL,
    Location_ VARCHAR(100), --NOT NULL,
    Size_ VARCHAR, --NOT NULL,
    Founded INT, --NOT NULL,
    Type_of_ownership VARCHAR(50), --NOT NULL,
    Industry VARCHAR(100), --NOT NULL,
    Sector VARCHAR(100), --NOT NULL,
    Revenue  VARCHAR(100), --NOT NULL,
    Competitors  VARCHAR(100), --NOT NULL, 
    Easy_Apply INT NOT NULL,
    Department  VARCHAR(100), --NOT NULL,
    Min_Salary INT NOT NULL,
    Max_Salary INT NOT NULL,
    Senior_Job BOOL NOT NULL,
    Salary_Lvl VARCHAR(100) NOT NULL,
    Salary_Average Float NOT NULL,
    City    VARCHAR(100) NOT NULL,
    State_  VARCHAR(100) NOT NULL
    );

DROP TABLE IF EXISTS US_STATES;
CREATE TABLE US_STATES (
	ID int(11) NOT NULL AUTO_INCREMENT,
	STATE_CODE char(2) NOT NULL,
	STATE_NAME varchar(50) NOT NULL,
	PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS US_CITIES;
CREATE TABLE US_CITIES (
	ID int(11) NOT NULL AUTO_INCREMENT,
	STATE_ID int(11) NOT NULL,
	CITY varchar(50) NOT NULL,
	COUNTY varchar(50) NOT NULL,
	LATITUDE double NOT NULL,
	LONGITUDE double NOT NULL,
	PRIMARY KEY (ID),
    FOREIGN KEY (ID_STATE) REFERENCES US_STATES(ID)
);
