

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id,name, days , inclution , exclution , cost FROM cost";
$result = $conn->query($sql);

//if ($result->num_rows > 0) {
  // output data of each row
  //while($row = $result->fetch_assoc()) {
  //  echo "tour name " . $row["name"]. " - days " . $row["days"]. "<br>";
  //}
//} else {
 // echo "0 results";
//}
?>
<table border="1" align="center"> 
	<tr>
		<th>Name</th>
		<th>Duration</th>
		<th>inclution</th>
		<th>Exclution</th>
		<th>Cosr per head</th>
	</tr>
<?php
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) 
  {
  ?>
  <tr>
		<td><?php echo $row["name"] ?></td>
		
		<td><?php echo $row["days"] ?></td>
		<td><?php echo $row["inclution"] ?></td>
		<td><?php echo $row["exclution"] ?></td>
		<td><?php echo $row["cost"] ?></td>
		<td>
				<a href="tour.php?edit=<?php echo $row['id'];?>">itinerary</a>
			</td>
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