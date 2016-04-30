-- Creating games table
CREATE TABLE `games` (
  `gameID` int(4) NOT NULL,
  `homeTeam` varchar(17) NOT NULL,
  `awayTeam` varchar(17) NOT NULL,
  `homeTeamScore` int(2) NOT NULL,
  `awayTeamScore` int(2) NOT NULL);

-- Adds the Primary Key attribute to gameID
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameID`);

-- This is the data for the games table
INSERT INTO `games` (`gameID`, `homeTeam`, `awayTeam`, `homeTeamScore`, `awayTeamScore`) VALUES
(1, 'Braves', 'Nationals', 3, 4),
(2, 'Braves', 'Nationals', 1, 3),
(3, 'Nationals', 'Braves', 6, 4),
(4, 'Nationals', 'Braves', 2, 1),
(5, 'Nationals', 'Braves', 3, 0),
(6, 'Nationals', 'Braves', 6, 2),
(7, 'Orioles', 'Rays', 6, 1),
(8, 'Orioles', 'Rays', 5, 3),
(9, 'Rays', 'Orioles', 6, 1),
(10, 'Rays', 'Orioles', 2, 0),
(11, 'Rays', 'Orioles', 3, 1),
(12, 'Rays', 'Orioles', 1, 3);
