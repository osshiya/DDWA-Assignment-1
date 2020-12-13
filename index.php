<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>Login</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="script.js"></script>
    <link rel="stylesheet" href="style.css">
    
    <style>
        body {
            text-align: center;
            width: 100%;
        }
        form{
            display: inline-block;
        }
    </style>
</head>

<body>


<?php
  // 1. Create a database connection
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $dbname = "irl";
  $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  // Test if connection occurred.
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }else{

  $sql = "SELECT type, id, password FROM fulllist"; //Remember spacing! If not SQL string will be stuck tog.
  $result = $connection->query($sql);
  
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       echo $row["id"] . "<br/>" . 
       $row["password"] . "</br>" .
       $row["type"] . "</br>";

       $_GET["form-name"];
       $_GET["form-password"];

       if ($row["id"] == $_GET["form-name"] && $row["password"] == $_GET["form-password"]){
            if($row["type"] == "administrator"){
                header("location: admin.php");
            }else if ($row["type"] == "staff"){
                header("location: staff.php");
            }else if($row["type"] == "student"){
                header("location: student.php");
            }
       }
   }
} else {
   echo "No results!";
   $error = "Your Login Name or Password is invalid";
}
}
?>

<form>
    <div class="form-group">
        <label for="form-name"></label>
        <input type="text" name="form-name" id="form-name" class="form-control" placeholder="Username">
        <label for="form-name"></label>
        <input type="password" class="form-control" name="form-password" id="form-password" placeholder="Password">
    </div>
        <button type="submit" class="btn btn-primary">Login</button>
</form>


<?php 
mysqli_close($connection);
?>

</body>
</html>