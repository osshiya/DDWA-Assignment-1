<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>Student List</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <link rel="stylesheet" href="style.css">
  </head>

<body>
<h3>Student List</h3>
<?php
  // 1. Create a database connection
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $dbname = "irl";
  $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
?>

<div class="back" name="back">
    <a onclick="window.history.back();"><b>Back</b></a>
</div>

<table class="table"><thead>
  <tr><th>Type</th><th>Name</th><th>ID</th><th>Password</th><th>Year Enrolled</th><th>Contact No</th><th>Status</th></tr> 
</thead><tbody>
<?php
  // Test if connection occurred.
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }else{
  $sql = "SELECT * FROM studentlist"; //Remember spacing! If not SQL string will be stuck tog.
  $result = $connection->query($sql);
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

       echo "<tr><td>" . $row["type"] . "</td>"
       . "<td>" .  $row["name"] . "</td>" 
       . "<td>"  .  $row["id"] . "</td>" 
       . "<td>" .  $row["password"] . "</td>" 
       . "<td>" .  $row["yearenrolled"] . "</td>" 
       . "<td>" .  $row["contactno"] . "</td>" 
       . "<td>" .  $row["status"]  . "</td></tr>";
    }
} else {
   "No results!";
}
}
?>
</tbody></table>

<?php 
mysqli_close($connection);
?>
</body>
</html>