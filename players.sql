-- Create a table called players
CREATE TABLE `players` (
  `playerID` int(4) NOT NULL,
  `firstName` varchar(14) NOT NULL,
  `lastName` varchar(14) NOT NULL,
  `position` varchar(2) NOT NULL,
  `leftyOrRighty` varchar(1) NOT NULL,
  `careerRBI` float NOT NULL,
  `careerBA` float NOT NULL,
  `careerHR` float NOT NULL,
  `careerERA` float NOT NULL,
  `dob` date NOT NULL,
  `currentTeam` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Make playerID attribute the Primary Key
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerID`);

-- Insert data into players
INSERT INTO `players` (`playerID`, `firstName`, `lastName`, `position`, `leftyOrRighty`, `careerRBI`, `careerBA`, `careerHR`, `careerERA`, `dob`, `currentTeam`) VALUES
(1, 'Julio', 'Teheran', 'SP', 'R', 10, 0.133, 0, 3.49, '1991-01-27', 'Braves'),
(2, 'AJ', 'Pierzynshi', 'C', 'L', 891, 0.282, 186, 0, '1976-12-30', 'Braves'),
(3, 'Freddie', 'Freeman', '1B', 'L', 431, 0.284, 107, 0, '1989-09-12', 'Braves'),
(4, 'Daniel', 'Castro', '2B', 'R', 9, 0.23, 2, 0, '1992-11-14', 'Braves'),
(5, 'Adonis', 'Garcia', '3B', 'R', 32, 0.279, 11, 0, '1985-04-12', 'Braves'),
(6, 'Erick', 'Aybar', 'SS', 'S', 418, 0.274, 48, 0, '1984-01-14', 'Braves'),
(7, 'Kelly', 'Johnson', 'LF', 'L', 520, 0.251, 145, 0, '1982-02-22', 'Braves'),
(8, 'Maliex', 'Smith', 'CF', 'L', 7, 0.188, 0, 0, '1993-05-06', 'Braves'),
(9, 'Nick', 'Markakis', 'RF', 'L', 730, 0.302, 144, 0, '1983-11-17', 'Braves'),
(10, 'Arodys', 'Vizcaino', 'RP', 'R', 0, 0, 0, 2.67, '1990-11-13', 'Braves'),
(11, 'Max', 'Scherzer', 'SP', 'R', 6, 0.189, 0, 3.48, '1984-07-27', 'Nationals'),
(12, 'Wilson', 'Ramos', 'C', 'R', 249, 0.259, 63, 0, '1987-08-10', 'Nationals'),
(13, 'Ryan', 'Zimmerman', '1B', 'R', 790, 0.282, 201, 0, '1981-08-15', 'Nationals'),
(14, 'Daniel', 'Murphy', '2B', 'L', 412, 0.29, 64, 0, '2008-08-02', 'Nationals'),
(15, 'Anthony', 'Rendon', '3B', 'R', 144, 0.272, 33, 0, '1990-06-06', 'Nationals'),
(16, 'Danny', 'Espinosa', 'SS', 'S', 221, 0.229, 69, 0, '1987-04-25', 'Nationals'),
(17, 'Jason', 'Werth', 'LF', 'R', 710, 0.271, 201, 0, '1979-05-20', 'Nationals'),
(18, 'Michael', 'Taylor', 'CF', 'R', 72, 0.223, 18, 0, '1991-03-26', 'Nationals'),
(19, 'Bryce', 'Harper', 'RF', 'L', 272, 0.289, 106, 0, '1992-10-16', 'Nationals'),
(20, 'Jonathan', 'Papelbon', 'RP', 'R', 0, 0, 0, 2.35, '1980-11-23', 'Nationals'),
(21, 'Chris', 'Tillman', 'SP', 'R', 0, 0, 0, 4.17, '1988-04-15', 'Orioles'),
(22, 'Matt', 'Wieters', 'C', 'S', 379, 0.257, 101, 0, '1986-05-21', 'Orioles'),
(23, 'Chris', 'Davis', '1B', 'L', 564, 0.254, 210, 0, '1986-03-17', 'Orioles'),
(24, 'Jonathan', 'Schoop', '2B', 'R', 95, 0.236, 35, 0, '1991-10-16', 'Orioles'),
(25, 'Manny', 'Machado', '3B', 'R', 231, 0.284, 75, 0, '1992-07-06', 'Orioles'),
(26, 'JJ', 'Hardy', 'SS', 'R', 624, 0.257, 177, 0, '1982-08-19', 'Orioles'),
(27, 'Joey', 'Rickard', 'LF', 'R', 7, 0.283, 2, 0, '1991-05-21', 'Orioles'),
(28, 'Adam', 'Jones', 'CF', 'R', 665, 0.277, 197, 0, '1985-08-01', 'Orioles'),
(29, 'Mark', 'Trumbo', 'RF', 'R', 427, 0.253, 137, 0, '1986-01-16', 'Orioles'),
(30, 'Zach', 'Britton', 'RP', 'L', 2, 0.625, 1, 3.66, '1987-12-22', 'Orioles'),
(31, 'Chris', 'Archer', 'SP', 'R', 0, 0, 0, 3.43, '1988-09-26', 'Rays'),
(32, 'Curt', 'Casali', 'C', 'R', 26, 0.194, 11, 0, '0000-00-00', 'Rays'),
(33, 'Logan', 'Morrison', '1B', 'L', 254, 0.242, 70, 0, '1987-08-25', 'Rays'),
(34, 'Logan', 'Forsythe', '2B', 'R', 159, 0.255, 38, 0, '1987-01-14', 'Rays'),
(35, 'Evan', 'Longoria', '3B', 'R', 717, 0.27, 208, 0, '1985-10-07', 'Rays'),
(36, 'Brad', 'Miller', 'SS', 'L', 123, 0.243, 286, 0, '1989-10-18', 'Rays'),
(37, 'Desmond', 'Jennings', 'LF', 'R', 177, 0.248, 49, 0, '1986-10-30', 'Rays'),
(38, 'Kevin', 'Kiermaier', 'CF', 'L', 81, 0.262, 23, 0, '1990-04-22', 'Rays'),
(39, 'Steven', 'Souza Jr', 'RF', 'R', 53, 0.228, 23, 0, '1989-04-24', 'Rays'),
(40, 'Alex', 'Colome', 'RP', 'R', 0, 0, 0, 3.42, '1988-12-31', 'Rays');
