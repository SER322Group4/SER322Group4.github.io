<?php
session_start();
?>
<form method = "post" action = "mainscreen.php">
<?php
$selectedInning = $_POST['inning'];
$selectedPlayer = $_SESSION['pID'];
$selectedGame = $_SESSION['gameID'];
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT * FROM seasonStats WHERE playerID = $selectedPlayer AND gameID = $selectedGame AND inning = $selectedInning;";
$result = mysql_query($sql);

$statTitleInfo = "SELECT firstName, lastName FROM players WHERE playerID = $selectedPlayer;";
$titleInfo = mysql_query($statTitleInfo);

echo "<p align=left>Results for ";

while($row = mysql_fetch_array($titleInfo)){
	echo $row['firstName'] . " " .  $row['lastName'] . " in Game " . $selectedGame . ", Inning " . $selectedInning . ".</p>";
}

echo '<table align="left"
cellspacing="5" cellpadding="8">
 
<tr><td align="left"><b>atBats</b></td>
<td align="left"><b>hits</b></td>
<td align="left"><b>homeruns</b></td>
<td align="left"><b>rbi</b></td>
<td align="left"><b>steals</b></td>
<td align="left"><b>errors</b></td>
<td align="left"><b>pitOuts</b></td>
<td align="left"><b>pitKs</b></td>
<td align="left"><b>pitHits</b></td>
<td align="left"><b>pitWalks</b></td>
<td align="left"><b>pitER</b></td></tr>';

while($row = mysql_fetch_array($result)){
	echo '<tr><td align="left">' .
	$row['atBats'] . '</td><td align="left">' .
	$row['hits'] . '</td><td align="left">' .
	$row['homeruns'] . '</td><td align="left">' .
	$row['rbi'] . '</td><td align="left">' .
	$row['steals'] . '</td><td align="left">' .
	$row['errors'] . '</td><td align="left">' .
	$row['pitOuts'] . '</td><td align="left">' .
	$row['pitKs'] . '</td><td align="left">' .
	$row['pitHits'] . '</td><td align="left">' .
	$row['pitWalks'] . '</td><td align="left">' .
$row['pitER'] . '</td>';

echo '</tr>';
}

echo '</table>';
?>

<p align = left>
<br />
<br />
<br />
<br />
<br />
<br />
<input type="submit" name="submit" value="Restart Query" />
</p>
</form>
