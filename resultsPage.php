<!DOCTYPE html>
<html>
<head>
	<title>Results</title>
</head>
<body>
<?php
session_start();
$selectedInning = $_POST['inning'];
$selectedGame = $_POST['gameID'];
$selectedPlayer = $_SESSION['pID'];
echo "Game: " . $selectedGame;
echo "</br>";
echo "Inning: " . $selectedInning;
echo "</br>";
echo "Player ID: " . $selectedPlayer;
?>
<br>
<a href="mainscreen.php">Back to main page</a>
</body>
</html>
<!--SELECT * FROM seasonStats WHERE playerID = $selectedPlayer AND gameID =$selectedGame AND inning = $selectedInning;-->