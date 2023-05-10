<!DOCTYPE html>
<html>

<head>
  <title>Add Season in Database</title>
</head>

<body>

  <?php
  include "dbconnection.php"; // Using database connection file here
  include 'head.php';

  if (isset($_POST['submit'])) {
    
    $title = $_POST['title'];
    $tepisode = $_POST['tepisode'];
    $id = $_GET['id'];
	$rawdate=$_POST['date'];
	$date = date('Y-m-d', strtotime($rawdate));
    $insert = mysqli_query($con, "INSERT INTO `season` (`Title`,`Total episode`,`Date Publish`,`Series_id`) VALUES ('$title',$tepisode,'$date',$id)");

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
    <h2>Add Season</h2>
    <br>
    <h3>Fill the Form</h3>

    <form method="POST">
      <table class="table table-bordered">
        <tbody>
          
          <tr>
            <td>Title</td>
            <td><input type="text" name="title" placeholder="Enter Title" Required></td>
          </tr>
          <tr>
            <td>Total episode</td>
            <td><input type="text" name="tepisode" placeholder="Enter Total Episode" Required></td>
          </tr>
		  <tr>
				<td>Date Publish</td>
				<td><input type="date" name="date" max="<?php echo date("YYYY-MM-DD"); ?>" id="date"  /></td>
		  </tr>
          <tr>
            <td><a class="btn btn-danger" href="view.php" role="button">Back</a></td>
            <td><input type="submit" class="btn btn-dark" name="submit" value="Submit"></td>
          </tr>
        </tbody>
      </table>
    </form>

  </div>
</body>

</html>