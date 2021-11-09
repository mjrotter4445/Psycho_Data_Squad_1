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
CREATE TABLE CITIES_DF_NEW (
	State_ VARCHAR(5),
	City_ID int ,
	City varchar(100) ,
	Lat FLOAT NOT NULL,
	Long FLOAT NOT NULL,
    Primary KEY (City_ID)
	);

-- Table structure for  'Data Analyst' 
CREATE TABLE DataAnalyst (
    Job_Title VARCHAR(275), --NOT NULL,
	Job_Description VARCHAR(50000), --NOT NULL,
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
	Easy_Apply VARCHAR(8),
	Department VARCHAR(1000),
	Min_Salary int,
	Max_Salary int,
	Senior_Job BOOL,
	Salary_Lvl VARCHAR(20),
	Salary_Average FLOAT,
	City VARCHAR(50),
	State_ VARCHAR(50)
	
    -- PRIMARY KEY (),
    --UNIQUE (dept_name)
);

SELECT d.job_title,
	d.job_description, 
	d.rating,
	d.company_name, 
	d.location_ ,
	d.size_ ,
	d.founded, 
	d.type_of_ownership,
	d.industry_,
	d.sector_,
	d.revenue_, 
	d.competitors,
	d.easy_apply,
	d.department,
	d.min_salary,
	d.max_salary,
	d.senior_job,
	d.salary_lvl,
	d.salary_average,
	d.city, 
	d.state_, 
	--c.state_,
	c.city_id,
	--c.city,
	c.lat,
	c.long
	
INTO datajob_geo
FROM dataanalyst as d
INNER JOIN cities_df_new as c
ON d.state_ = c.state_
;


SELECT * From datajob_geo;


ALTER TABLE datajob_geo ADD COLUMN id SERIAL PRIMARY KEY;
ALTER TABLE datajob_geo ADD COLUMN id SERIAL PRIMARY KEY;