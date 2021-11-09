-- Creating tables  
CREATE TABLE DataAnalyst (
     Job_Title VARCHAR(275), --NOT NULL,
     Salary_Estimate VARCHAR(50), --NOT NULL,
	 --Job_Description VARCHAR(10000), --NOT NULL,
	 Rating FLOAT(3), --NOT NULL,
	 Company_Name VARCHAR(100),-- NOT NULL,
	 Location_ VARCHAR(50),-- NOT NULL, 
	 Size_ VARCHAR(50),-- NOT NULL,
	 Founded INT, --NOT NULL,
	 Type_of_Ownership VARCHAR(50), --NOT NULL,
	 Industry_ VARCHAR(50), --NOT NULL,
	 Sector_ VARCHAR(50), --NOT NULL,
	 Revenue_ VARCHAR(50), --NOT NULL,
	 Competitors VARCHAR(200), --NOT NULL,
	 Easy_Apply VARCHAR(8) --NOT NULL
	
    -- PRIMARY KEY (),
     --UNIQUE (dept_name)
);