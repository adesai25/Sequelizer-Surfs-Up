-- Drops the surf db if it exists currently--
DROP DATABASE IF EXISTS surf_db;
--  Creates the "surf_db" database--
CREATE DATABASE surf_db;

-- Makes it so all of the following code will only affect surf db
USE surf_db;

CREATE TABLE measure_db(
	ID INTEGER(11)  AUTO_INCREMENT NOT NULL,
    station VARCHAR(15),
	date date,
    pcrp DECIMAL(8,2),
    tobs INTEGER(3),
    PRIMARY KEY(ID)
);

USE surf_db;

CREATE TABLE stations_db(
	ID INTEGER(11)  AUTO_INCREMENT NOT NULL,
    station VARCHAR(15),
	name VARCHAR (50),
    latitude VARCHAR(50),
    longitude VARCHAR(50),
    elevation DECIMAL (30,2),
    PRIMARY KEY(ID)
);

-- See what the measure table looks like
Select * from measure_db;

-- See what the stations table looks like
Select * from stations_db;

