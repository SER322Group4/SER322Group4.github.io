-- Create a table called games
CREATE TABLE `games` (
  `gameID` int(4) NOT NULL,
  `homeTeam` varchar(17) NOT NULL,
  `awayTeam` varchar(17) NOT NULL,
  `homeTeamScore` int(2) NOT NULL,
  `awayTeamScore` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Make gameID attribute the Primary Key
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameID`);

-- Insert data into games
INSERT INTO `games` (`gameID`, `homeTeam`, `awayTeam`, `homeTeamScore`, `awayTeamScore`) VALUES
(1, 'Braves', 'Nationals', 3, 4),
(2, 'Nationals', 'Braves', 6, 4),
(3, 'Orioles', 'Rays', 6, 1),
(4, 'Rays', 'Orioles', 2, 0);
