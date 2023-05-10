<?php
error_reporting(0);
include("adheader.php");
session_start();
?>
<!DOCTYPE html>
<html>

<head>
  <title>Add Genre in Database</title>
</head>

<body>

  <?php
  include "dbconnection.php"; // Using database connection file here

  if (isset($_POST['submit'])) {
    $genre = $_POST['genre'];
    $insert = mysqli_query($con, "INSERT INTO `genre` (`Name`) VALUES ('$genre')");

    if (!$insert) {
      echo mysqli_error($con);
    } else {
      echo "Records added successfully.";
      header("Refresh:1 url=addgenre.php");
      exit;
    }
  }

  mysqli_close($con); // Close connection
  ?>

  <div class="container">

    <br>
    <h1>Add Genre</h1>
    <br>
    <h2>Fill the Form</h2>

    <br>

    <form method="POST">
      <table class="table table-bordered">
        <tbody>
         
          <tr>
            <td>Genre </td>
            <td> <input type="text" name="genre" placeholder="Enter Genre" Required></td>
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