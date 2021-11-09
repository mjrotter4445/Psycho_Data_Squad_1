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