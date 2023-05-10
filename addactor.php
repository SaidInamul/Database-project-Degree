<?php
error_reporting(0);
include("adheader.php");
session_start();
?>
<!DOCTYPE html>
<html>

<head>
  <title>Add Actor in Database</title>
</head>

<body>

  <?php

  if (isset($_POST['submit'])) {

    $name = $_POST['name'];
    $age = $_POST['age'];
    $gen = $_POST['gen'];
    $insert = mysqli_query($con, "INSERT INTO `actor` (`Name`,`Age`,`Gender`) VALUES ('$name',$age,'$gen')");

    if (!$insert) {
      echo mysqli_error($con);
    } else {
      echo "Records added successfully.";
      header("Refresh:1 url=addactor.php");
      exit;
    }
  }

  mysqli_close($con); // Close connection
  ?>

  <div class="container">
  
    <br>
    <h1>Add Actor</h1>
    <br>
    <h2>Fill the Form</h2>

    <br>

    <form method="POST">
      <table class="table table-bordered">
        <tbody>
      
          <tr>
            <td>Full name</td>
            <td><input type="text" name="name" placeholder="Enter Full name" Required></td>
          </tr>
          <tr>
            <td>Age</td>
            <td><input type="text" name="age" placeholder="Enter Age" Required></td>
          </tr>
          <tr>
            <td><label>Gender</label></td>
            <td><input type="radio" name="gen" checked value="Male">Male
              <input type="radio" name="gen" checked value="Female">Female
            </td>
          </tr>
          <tr>
            <td><input type="submit" name="submit" value="Submit"></td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</body>

</html>