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

<!--SELECT * FROM seasonStats WHERE playerID = $selectedPlayer AND gameID =$selectedGame AND inning = $selectedInning;-->