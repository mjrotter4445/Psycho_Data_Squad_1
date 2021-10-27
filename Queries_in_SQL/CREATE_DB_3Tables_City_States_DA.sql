--
-- Table structure for table `us_states`
--

DROP TABLE IF EXISTS US_STATES;
CREATE TABLE US_STATES (
	ID int(11) NOT NULL AUTO_INCREMENT,
	STATE_CODE char(2) NOT NULL,
	STATE_NAME varchar(50) NOT NULL,
	PRIMARY KEY (ID)
);

--
-- Table structure for table `us_cities`
--

DROP TABLE IF EXISTS US_CITIES;
CREATE TABLE US_CITIES (
	ID int(11) NOT NULL AUTO_INCREMENT,
	ID_STATE int(11) NOT NULL,
	CITY varchar(50) NOT NULL,
	COUNTY varchar(50) NOT NULL,
	LATITUDE double NOT NULL,
	LONGITUDE double NOT NULL,
	PRIMARY KEY (ID),
    FOREIGN KEY (ID_STATE) REFERENCES US_STATES(ID)
);

-- Table structure for  'Data Analyst' 
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