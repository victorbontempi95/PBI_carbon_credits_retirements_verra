CREATE TABLE cc_project.retirements (
    Vintage DATE,
    ID INT,
    Project_Name VARCHAR(512),
    Country VARCHAR(256),
    Project_Type VARCHAR(512),
    Retired_Qty INT,
    Retirement_Date DATE,
    Company VARCHAR(2048)
    );
    
CREATE TABLE cc_project.available (
    Vintage DATE,
    ID INT,
    Project_Name VARCHAR(512),
    Country VARCHAR(256),
    Project_Type VARCHAR(512),
    Available_Qty INT,
    Additional_Certifications VARCHAR(2048)
    );
    
CREATE TABLE cc_project.registered (
    ID INT,
    Project_Name VARCHAR(512),
    Proponent VARCHAR(512),
    Project_Type VARCHAR(512),
    Country VARCHAR(256)
    );

TRUNCATE TABLE cc_project.retirements;
    
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retired_df.csv'
INTO TABLE cc_project.retirements
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES;

TRUNCATE TABLE cc_project.available;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/active_df.csv'
INTO TABLE cc_project.available
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES;

TRUNCATE TABLE cc_project.registered;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/registered_projects.csv'
INTO TABLE cc_project.registered
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES;


