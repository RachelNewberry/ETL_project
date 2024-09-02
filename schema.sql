DROP TABLE IF EXISTS olympics;
DROP TABLE IF EXISTS athlete_events;

-- Create Tables
	CREATE TABLE olympics (
	Country_Code TEXT PRIMARY KEY,
	Nation TEXT,
	Medals_Won INT
);

	CREATE TABLE athlete_events (
	id BIGSERIAL NOT NULL PRIMARY KEY,
		Country_Code TEXT,
		County_Name TEXT,
		Event TEXT
	);


-- Query to check successful load
SELECT * FROM olympics;

SELECT * FROM athlete_events;

-- Join tables on county_id
SELECT olympics.Country_Code, olympics.Nation, athlete_events.County_Name
FROM olympics
INNER JOIN athlete_events
ON olympics.Country_Code = athlete_events.Country_Code;
