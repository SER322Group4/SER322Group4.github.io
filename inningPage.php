<?php
session_start();
?>
<form method = "post" action = "resultsPage.php">
Inning:  <br />
<?php
$selectedGame = $_POST['gameID'];
$selectedPlayer = $_SESSION['pID'];
$_SESSION['gameID'] = $selectedGame;
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT inning FROM seasonStats WHERE playerID = $selectedPlayer AND gameID = $selectedGame;";
$result = mysql_query($sql);

$select= '<select name = "inning">';
$select.='<option value = "">Select...</option>';
while ($row = mysql_fetch_array($result)) {
	$select.= '<option value = "'. $row['inning'] .'">' . $row['inning'] .'</option>';
}
$select.='</select>';
echo $select;	
?>

<p>
<input type="submit" name="submit" value="Next..." />
</p>
</form>