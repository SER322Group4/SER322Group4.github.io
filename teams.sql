-- Creating teams table
CREATE TABLE `teams` (
  `name` varchar(17) NOT NULL,
  `city` varchar(13) NOT NULL,
  `league` varchar(8) NOT NULL);
  
  -- Adds the Primary Key attribute to team name
ALTER TABLE `teams`
  ADD PRIMARY KEY (`name`);
  
-- This is the data for the teams table
INSERT INTO `teams` (`name`, `city`, `league`) VALUES
('Braves', 'Atlanta', 'National'),
('Nationals', 'Washington', 'National'),
('Orioles', 'Baltimore', 'American'),
('Rays', 'Tampa Bay', 'American');
