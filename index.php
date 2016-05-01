<html>
<head>
<title>Baseball Statistics</title>
<style type = "text/css">
.prompt { color: Black;
font-family: sans-serif;
font-size: large }
</style>
</head>
<body>
<h1>Baseball Statistics</h1>
<!-- post form data to form.php -->
<form method = "post" action = "form.php">
<div>
<span class = "prompt">
Please use the dropdown menus to search for the statistics you want.<br />
NOTE: You do not have to fill them all out. <br />
<br />
</span>
<!-- create dropdowns for queiries -->

<p>
League:  <br />
<select league = "lea">
<option value  =""?> Select...</option>
<option value  ="National"?>National</option>
<option value  ="American"?>American</option>
</select>
</p>


<p>PlayerID:  <br /></p>
<?php
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT playerID FROM players";
$result = mysql_query($sql);

echo "<select playerID = 'pID'>";
echo "<option value = \"\"?>Select...</option>";
while ($row = mysql_fetch_array($result)) {
	echo "<option value = '". $row['playerID'] ."'>" . $row['playerID'] ."</option>";
}
echo "</select>";
?>

<br />
<br />

GameID: <br />
<?php
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT gameID FROM games";
$result = mysql_query($sql);

echo "<select gameID = 'gID'>";
echo "<option value = \"\"?>Select...</option>";
while ($row = mysql_fetch_array($result)) {
	echo "<option value = '". $row['gameID'] ."'>" . $row['gameID'] ."</option>";
}
echo "</select>";
?>

<br />
<br />

Teams: <br />
<?php
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT name FROM teams";
$result = mysql_query($sql);

echo "<select name = 'tname'>";
echo "<option value = \"\"?>Select...</option>";
while ($row = mysql_fetch_array($result)) {
	echo "<option value = '". $row['name'] ."'>" . $row['name'] ."</option>";
}
echo "</select>";
?>

<br />

<p>
Inning: <br />
<select inning = "inn"> <br />
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

</div>
</form>
</body>
</html>
