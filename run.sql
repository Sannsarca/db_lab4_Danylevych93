--1 function deletes all data that does not meet the conditions such as:
--Points are zero
--Position is bigger than countries or is negative

SELECT * FROM years_info4

INSERT INTO years_info4
VALUES ('1', 2016, 0,0),
		('6', 2016, 6.6,-5),
		('7', 2007, 6.6,200);

SELECT * FROM years_info4

SELECT clear_years_info4();

SELECT * FROM years_info4

--2 procedure prints allcountries from given region

CALL countries_by_region('Central and Eastern Europe')
CALL countries_by_region('Sub-Saharan Africa')

--3 trigger make new region name uppercase

SELECT * FROM region4
INSERT INTO region4 VALUES ('10','Asia')
SELECT * FROM region4

