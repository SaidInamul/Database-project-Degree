<?php

include "dbconnection.php"; // Using database connection file here
include 'head.php';

$id = $_GET['id']; // get id through query string

$qry = mysqli_query($con, "select * from season where Season_id=$id"); // select query

$data = mysqli_fetch_array($qry); // fetch data

if (isset($_POST['submit'])) // when click on Update button
{
    
    $title = $_POST['Title'];
    $tepisode = $_POST['tepisode'];
	$rawdate=$_POST['date'];
	$date = date('Y-m-d', strtotime($rawdate));
    $edit = mysqli_query($con, "UPDATE `season` SET `Title`='$title',`Total Episode`=$tepisode,`Date Publish`='$date' where `season`.`Season_id`=$id");

    if ($edit) {
        mysqli_close($con); // Close connection
        //header("location:viewseason.php");
        echo "Successfully updated";
        header("Refresh:1 url=view.php");
        exit;
    }
}
?>

<div class="container">
    <br>
    <h3>Edit Season</h3>
    <br>

    <form method="POST">
        <table class="table table-bordered">
            <tbody>
                
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="Title" value="<?php echo $data['Title'] ?>" placeholder="Enter Title" Required></td>
                </tr>
                <tr>
                    <td>Total episode</td>
                    <td><input type="text" name="tepisode" value="<?php echo $data['Total Episode'] ?>" placeholder="Enter Total Episode" Required></td>
                </tr>
				<tr>
					<td>Date Publish</td>
					<td><input type="date" name="date" max="<?php echo date("YYYY-MM-DD"); ?>" id="date"  /></td>
				</tr>
                <tr>
                    <td><a class="btn btn-danger" href="view.php" role="button">Back</a></td>
                    <td><input type="submit" name="submit" value="Submit"></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>