<!DOCTYPE html>
<html>

<head>
  <title>Add Director for selected TV series in Database</title>
</head>

<body>

  <?php
  include "dbconnection.php"; // Using database connection file here
  include 'head.php';

  if (isset($_POST['submit'])) {
    $directorid = $_POST['directorid'];
    $id = $_GET['id'];
    $insert = mysqli_query($con, "INSERT INTO `direct_tv_series` (`Director_id`,`Series_id`) VALUES ($directorid,$id)");

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
    <br>

    <form method="POST">
      <table class="table table-bordered">
        <tbody>
          <tr>
            <td>Director ID </td>
            <td><input type="text" name="directorid" placeholder="Enter Director ID" Required></td>
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