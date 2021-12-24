-- Creating Country table --

CREATE TABLE country4
(
	country_id		char(10)		NOT NULL UNIQUE, 
	country_name	VARCHAR(100)	NOT NULL, 
	region_id		char(10)		NOT NULL, 
	PRIMARY KEY(country_id)
);

-- Create years and info table --

CREATE TABLE years_info4
(
	country_id	char(10) NOT NULL,
	year_data	INT		 NOT NULL,
	points 		decimal	 NOT NULL,
	place		INT 	 NOT NULL,
	PRIMARY KEY(country_id, year_data)
);

-- Create region table --

CREATE TABLE region4
(
	region_id	char(10)	NOT NULL UNIQUE,  
	region 		VARCHAR(100)	NOT NULL,
	PRIMARY KEY(region_id)
);

-- Define foreign keys --

ALTER TABLE years_info4 ADD CONSTRAINT FK_yer_country FOREIGN KEY (country_id) REFERENCES country4 (country_id);
ALTER TABLE country4 ADD CONSTRAINT FK_country_region FOREIGN KEY (region_id) REFERENCES region4 (region_id);