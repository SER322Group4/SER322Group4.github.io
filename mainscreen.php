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
<form method = "post" action = "gamepage.php">
PlayerID:  <br />
<?php
mysql_connect('localhost','root','password');
mysql_select_db('Baseball');

$sql = "SELECT playerID FROM players";
$result = mysql_query($sql);

$select= '<select name = "pID">';
$select.='<option value = "1">Select...</option>';
while ($row = mysql_fetch_array($result)) {
$select.= '<option value = "'. $row['playerID'] .'">' . $row['playerID'] .'</option>';
}
$select.='</select>';
echo $select;
?>

<p>
<input type="submit" name="submit" value="Next..." />
</p>
</form>
