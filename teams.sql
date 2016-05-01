-- Create a table called team
CREATE TABLE `teams` (
  `name` varchar(17) NOT NULL,
  `city` varchar(13) NOT NULL,
  `league` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Make name attribute the Primary Key
ALTER TABLE `teams`
  ADD PRIMARY KEY (`name`);
  
  -- Insert data into teams
INSERT INTO `teams` (`name`, `city`, `league`) VALUES
('Braves', 'Atlanta', 'National'),
('Nationals', 'Washington', 'National'),
('Orioles', 'Baltimore', 'American'),
('Rays', 'Tampa Bay', 'American');
