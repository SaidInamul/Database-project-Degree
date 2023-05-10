<?php
// Create connection
$con=mysqli_connect("localhost","root","","project_db_tmf2034_g03");

// Check connection
if (mysqli_connect_errno($con))
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
