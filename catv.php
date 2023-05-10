<!DOCTYPE html>
<html>

<head>
  <title>Add Genre for TV series in Database</title>
</head>

<body>

  <?php
  include "dbconnection.php"; // Using database connection file here
  include 'head.php';

  if (isset($_POST['submit'])) {
    $actorid = $_POST['actor'];
    $cast = $_POST['cast'];
    $id = $_GET['id'];
    $insert = mysqli_query($con, "INSERT INTO `tv_series_cast` (`Actor_id`,`Series_id`,`Cast_Name`) VALUES ($actorid,$id,'$cast')");

    if (!$insert) {
      echo mysqli_error($con);
    } else {
      echo "Records added successfully.";
      header("Refresh:1 url=view.php");
      exit;
    }
  }

  mysqli_close($con); // Close connection
  ?>

<div class="container">
<br>
  <h3>Fill the Form</h3>

  <form method="POST">
    <table class="table table-bordered">
      <tbody>
        <tr>
          <td>Actor ID</td>
          <td><input type="text" name="actor" placeholder="Enter Actor ID" Required></td>
        </tr>
        <tr>
          <td>Cast name</td>
          <td><input type="text" name="cast" placeholder="Enter Cast Name" Required></td>
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

</html>