DROP TABLE IF EXISTS Sprint_Results;
DROP TABLE IF EXISTS RACES;
DROP TABLE IF EXISTS DRIVERS;
DROP TABLE IF EXISTS CONSTRUCTORS;
DROP TABLE IF EXISTS STATUS;

CREATE TABLE RACES(
raceId INT NOT NULL,
raceName TEXT NOT NULL,
raceDate DATE NOT NULL,
PRIMARY KEY (raceId));

CREATE TABLE DRIVERS (
driverId INT NOT NULL,
driverName TEXT NOT NULL,
NUMBER INT NOT NULL,
PRIMARY KEY (driverId));

CREATE TABLE CONSTRUCTORS (
constructorId INT NOT NULL,
constructorName TEXT NOT NULL,
PRIMARY KEY (constructorId));

CREATE TABLE STATUS(
statusId INT NOT NULL,
status TEXT NOT NULL,
PRIMARY KEY (statusId));


-- Table for storing sprint results
CREATE TABLE Sprint_Results (
    resultId INT NOT NULL,
    raceId INT NOT NULL,
    driverId INT NOT NULL,
    constructorId INT NOT NULL,
    
    number INT,
    grid INT,
    position TEXT,
    positionText TEXT,
    positionOrder INT,
    points INT,
    laps INT,
    time TEXT,
    milliseconds TEXT,
    fastestLap TEXT,
    fastestLapTime TEXT,
    statusId INT,
    PRIMARY KEY (raceId, driverId));

COPY sprint_results FROM 'C:\uni\8x\ATD\archive\sprint_results.csv' DELIMITER ',' CSV HEADER;