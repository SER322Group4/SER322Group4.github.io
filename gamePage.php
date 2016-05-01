<?php
session_start();
?>
<form method = "post" action = "inningPage.php">
GameID:  <br />
<?php
$selectedPlayer = $_POST['pID'];
$_SESSION['pID'] = $selectedPlayer;
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT DISTINCT gameID FROM games, players WHERE playerID = $selectedPlayer AND (homeTeam = currentTeam OR awayTeam = currentTeam);";
$result = mysql_query($sql);

$select= '<select name = "gameID">';
$select.='<option value = "">Select...</option>';
while ($row = mysql_fetch_array($result)) {
	$select.= '<option value = "'. $row['gameID'] .'">' . $row['gameID'] .'</option>';
}
$select.='</select>';
echo $select;
?>

<p>
<input type="submit" name="submit" value="Next..." />
</p>
</form>