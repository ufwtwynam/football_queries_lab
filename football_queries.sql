-- 1) Find all the matches from 2017

SELECT * FROM matches WHERE season = 2017;

-- 2) Find all the matches featuring Barcelona

SELECT * FROM matches WHERE hometeam = 'Barcelona';


-- 3) What are the names of the Scottish divisions included?

SELECT name FROM divisions WHERE country = 'Scotland';

-- 4) Find the value of the `code` for the `Bundesliga` division. Use that code to find out how many matches Freiburg have played in that division. HINT: You will need to query both tables


SELECT code FROM divisions WHERE name = 'Bundesliga';

SELECT COUNT(*) FROM matches WHERE division_code = 'D1' AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg');


-- 5) Find the teams which include the word "City" in their name. HINT: Not every team has been entered into the database with their full name, eg. `Norwich City` are listed as `Norwich`. If your query is correct it should return four teams.


SELECT DISTINCT hometeam FROM matches WHERE hometeam LIKE '%City%';


-- 6) How many different teams have played in matches recorded in a French division?


SELECT code FROM divisions WHERE country = 'France';

SELECT COUNT(DISTINCT hometeam) FROM matches WHERE division IN ('F1', 'F2');