<?php
$query= $_GET['Query'];
echo $query;
$mysqli = new mysqli("localhost", "root", "", "miniproject");
 $result = $mysqli->query($query);
if (!$result)
{
echo "edited succesfully";
}
else
?><br><?php
echo 'Query OK(0.08 sec)';
mysqli_close($mysqli);
?>