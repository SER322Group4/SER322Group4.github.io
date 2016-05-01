<?php
session_start();
?>
<form method = "post" action = "resultsPage.php">
GameID:  <br />
<?php
$selectedPlayer = $_POST['pID'];
$_SESSION['pID'] = $selectedPlayer;
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT DISTINCT gameID FROM games, players WHERE playerID = $selectedPlayer AND (homeTeam = currentTeam OR awayTeam = currentTeam);";
$result = mysql_query($sql);

$select= '<select name = "gameID">';
$select.='<option value = "1">Select...</option>';
while ($row = mysql_fetch_array($result)) {
	$select.= '<option value = "'. $row['gameID'] .'">' . $row['gameID'] .'</option>';
}
$select.='</select>';
echo $select;
?>

<p>
Inning: <br />
<select name = "inning"> <br />
<option value  =""?>Select...</option>
<option value  = "1"?>1</option>
<option value  = "2"?>2</option>
<option value  = "3"?>3</option>
<option value  = "4"?>4</option>
<option value  = "5"?>5</option>
<option value  = "6"?>6</option>
<option value  = "7"?>7</option>
<option value  = "8"?>8</option>
<option value  = "9"?>9</option>
</select>
</p>

<p>
<input type="submit" name="submit" value="Next..." />
</p>
</form>