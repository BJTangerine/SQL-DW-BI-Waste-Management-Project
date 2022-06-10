-- DROP statements to ensure no errors if script is run more than once.
-- CASCADE is default of db2's drop table statement "CASCADE mode is the default mode of the DROP TABLE statement" - https://www.ibm.com/docs/en/informix-servers/12.10?topic=statement-specifying-cascade-mode 6/8/22
DROP TABLE IF EXISTS ccp43946.DimDate;
DROP TABLE IF EXISTS ccp43946.DimTruck;
DROP TABLE IF EXISTS ccp43946.DimStation;
DROP TABLE IF EXISTS ccp43946.FactTrips;


CREATE TABLE DimDate(
	dateid INT NOT NULL PRIMARY KEY,
	date DATE,
	Year INT,
	Quarter INT,
	QuarterName VARCHAR(2),
	Month INT,
	Monthname VARCHAR(9),
	Day INT,
	Weekday INT,
	WeekdayName VARCHAR(9)
);

CREATE TABLE DimTruck(
	Truckid INT NOT NULL PRIMARY KEY,
	TruckType VARCHAR(6)
);

CREATE TABLE DimStation(
	Stationid INT NOT NULL PRIMARY KEY,
	City VARCHAR(14)
);

CREATE TABLE FactTrips(
	Tripid INT NOT NULL PRIMARY KEY,
	dateid INT NOT NULL, FOREIGN KEY (dateid) REFERENCES DimDate(dateid),
	Truckid INT NOT NULL, FOREIGN KEY (Truckid) REFERENCES DimTruck(Truckid),
	Stationid INT NOT NULL, FOREIGN KEY (Stationid) REFERENCES DimStation(Stationid),
	Wastecollected DECIMAL(4,2)
);