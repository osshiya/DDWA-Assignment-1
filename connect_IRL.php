<?php
  // 1. Create a database connection
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $dbname = "IRL";
  $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  // Test if connection occurred.
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }
  else{ //continued within body tag

?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
		<title>IMGD Resource Library!</title>
	</head>
	<body>
<?php 
	$sql = "SELECT fulllist_name "; //Remember spacing! If not SQL string will be stuck tog.
	$sql .= "FROM fulllist "; //Reading from "Mutant" table
	$sql .= "ORDER BY fulllist_name;"; //Alphabetical order
	$result = $connection->query($sql);
	
	if ($result->num_rows > 0) {
     // output data of each row
    
     while($row = mysqli_fetch_assoc($result)) {
		 echo $row["fulllist_name"]."<br/>";
     }
} 	else {
     echo "No results!";
}

	}
	?>
	</body>
</html>

<?php
  // 5. Close database connection
  mysqli_close($connection);
?>