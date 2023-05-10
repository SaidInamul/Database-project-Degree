<?php

include "dbconnection.php"; // Using database connection file here
include 'head.php';

$id = $_GET['id']; // get id through query string

$qry = mysqli_query($con, "select * from tv_series where Series_id=$id"); // select query

$data = mysqli_fetch_array($qry); // fetch data

if (isset($_POST['submit'])) // when click on Update button
{

  $title = $_POST['title'];
  $tseason = $_POST['tseason'];
  $tepisode = $_POST['tepisode'];
  $award = $_POST['award'];
  $lang = $_POST['lang'];
  $desc = $_POST['desc'];
  $age = $_POST['age'];
  
  $edit = mysqli_query($con, "UPDATE tv_series SET Title = '$title', Total_Season = $tseason, Total_Episode = $tepisode, Award = '$award', Language = '$lang', Description = '$desc', Age_Restriction = '$age' WHERE Series_id = $id");

  if ($edit) {
    
    echo "Successfully updated";
    header("Refresh:1 url=view.php");
  }

  else
  {
    echo "Unsuccessfully updated";
    header("Refresh:1 url=view.php");
  }
}
?>
<div class="container">
  <br>
  <h3>Update Data</h3>
  <br>

  <form method="post">
    <table class="table table-bordered">
      <tbody>
        <tr>
          <td>Title</td>
          <td><input type="text" name="title" value="<?php echo $data['Title'] ?>" placeholder="Enter Title" Required><br></td>
        </tr>
        <tr>
          <td>Total season </td>
          <td><input type="text" name="tseason" value="<?php echo $data['Total_Season'] ?>" placeholder="Enter Total Season" Required></td>
        </tr>
        <tr>
          <td>Total episode</td>
          <td><input type="text" name="tepisode" value="<?php echo $data['Total_Episode'] ?>" placeholder="Enter Total episode" Required></td>
        </tr>
        <tr>
          <td>Award</td>
          <td><input type="text" name="award" value="<?php echo $data['Award'] ?>" placeholder="Enter Award" Required></td>
        </tr>
        <tr>
          <td>Language</td>
          <td><input type="text" name="lang" value="<?php echo $data['Language'] ?>" placeholder="Enter Language" Required></td>
        </tr>
        <tr>
          <td>Description</td>
          <td><input type="text" name="desc" value="<?php echo $data['Description'] ?>" placeholder="Enter Description" Required></td>
        </tr>
        <tr>
          <td><label>Age restriction</label></br></td>
          <td><input type="radio" name="age" checked value="Yes">Yes
            <input type="radio" name="age" value="No">No
          </td>
        </tr>
        <tr>
          <td><a class="btn btn-danger" href="view.php" role="button">Back</a></td>
          <td><input type="submit" name="submit" value="Submit"></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
</body>