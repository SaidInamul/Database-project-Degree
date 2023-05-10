<?php
error_reporting(0);
include("adheader.php");
session_start();
?>

<!DOCTYPE html>
<html>

<head>
  <title>Add TV Series in Database</title>
</head>

<body>

  <?php

  if (isset($_POST['submit'])) {
    $title = $_POST['title'];
    $tseason = $_POST['tseason'];
    $tepisode = $_POST['tepisode'];
    $award = $_POST['award'];
    $lang = $_POST['lang'];
    $desc = $_POST['desc'];
    $age = $_POST['age'];
    $insert = mysqli_query($con, "INSERT INTO `tv_series` (`Title`,`Total_Season`,`Total_Episode`,`Award`,`Language`,`Description`,`Age_Restriction`) VALUES ('$title',$tseason,$tepisode,'$award','$lang','$desc','$age')");

    if (!$insert) {
      echo mysqli_error($con);
    } else {
      echo "Records added successfully.";
      header("Refresh:1 url=addtv.php");
      exit;
    }
  }

  mysqli_close($con); // Close connection
  ?>
  <div class="container">
    <br>
    <h1>Add TV Series</h1>
    <br>
    <h2>Fill the Form</h2>
    <br>

    <form method="POST">
      <table class="table table-bordered">
        <tbody>
         
          <tr>
            <td>Title </td>
            <td><input type="text" name="title" placeholder="Enter Title" Required></td>
          </tr>
          <tr>
            <td>Total season </td>
            <td> <input type="text" name="tseason" placeholder="Enter Total Season" Required></td>
          </tr>
          <tr>
            <td>Total episode </td>
            <td> <input type="text" name="tepisode" placeholder="Enter Total episode" Required></td>
          </tr>
          <tr>
            <td>Award </td>
            <td> <input type="text" name="award" placeholder="Enter Award" Required></td>
          </tr>
          <tr>
            <td> Language </td>
            <td> <input type="text" name="lang" placeholder="Enter Language" Required></td>
          </tr>
          <tr>
            <td> Description</td>
            <td><input type="text" name="desc" placeholder="Enter Description" Required></td>
          </tr>
          <tr>
            <td><label>Age restriction</label></td>
            <td><input type="radio" name="age" checked value="Yes">Yes
              <input type="radio" name="age" checked value="No">No
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