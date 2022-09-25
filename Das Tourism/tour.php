<!DOCTYPE html>
<html>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
 
	if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		
	}

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT tour_id,id, station, itinerary FROM tour_itinerary where tour_id=$id";
$result = $conn->query($sql);
?>
<table border="1" align="center"> 
	<tr>
		<th>Station</th>
		<th>Itinerary</th>
	</tr>
<?php

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
   ?>
  <tr>
		<td><?php echo $row["station"] ?></td>
		<td><?php echo $row["itinerary"] ?></td>
  </tr>
  <?php  
  }
  ?>
  </table>
  <?php
    
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>