<!DOCTYPE html>
<html>

<head>
  <title>Add Episode in Database</title>
</head>

<body>

  <?php
  include "dbconnection.php"; // Using database connection file here
  include 'head.php';

  if (isset($_POST['submit'])) {
    
    $title = $_POST['title'];
    $duration = $_POST['duration'];
    $id = $_GET['id'];
    $insert = mysqli_query($con, "INSERT INTO `episode` (`Title`,`Duration`,`Season_id`) VALUES ('$title',$duration,$id)");

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
            <td>Title</td>
            <td><input type="text" name="title" placeholder="Enter Title" Required></td>
          </tr>
          <tr>
            <td>Duration</td>
            <td><input type="text" name="duration" placeholder="Enter Duration" Required></td>

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