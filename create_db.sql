CREATE DATABASE mig_db;
GO
USE mig_db;
GO

CREATE TABLE football_team (id INT, name NVARCHAR (50), league INT);
GO
INSERT INTO football_team VALUES (1, 'Arsenal', 1);
INSERT INTO football_team VALUES (2, 'Southampton', 2);
INSERT INTO football_team VALUES (3, 'Portsmouth', 2);
INSERT INTO football_team VALUES (4, 'AFC Bournemouth', 1);
GO

CREATE TABLE football_league (id INT, name NVARCHAR (50));
GO
INSERT INTO football_league VALUES (1, 'Premier League');
INSERT INTO football_league VALUES (2, 'Championship');
INSERT INTO football_league VALUES (3, 'League One');
INSERT INTO football_league VALUES (4, 'League Two');
GO
