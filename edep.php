<?php

include "dbconnection.php"; // Using database connection file here
include 'head.php';

$id = $_GET['id']; // get id through query string

$qry = mysqli_query($con, "select * from episode where Ep_id=$id"); // select query

$data = mysqli_fetch_array($qry); // fetch data

if (isset($_POST['submit'])) // when click on Update button
{
    
    $title = $_POST['Title'];
    $duration = $_POST['duration'];
    $edit = mysqli_query($con, "update episode set  Title= '$title', Duration=$duration where Ep_id=$id");

    if ($edit) {
        mysqli_close($con); // Close connection
        // header("location:viewepisode.php"); 
        echo "Successfully updated";
        header("Refresh:1 url=view.php"); // redirects to all records pTitle
        exit;
    }
}
?>

<div class="container">
    <br>
    <h3>Edit Episode</h3>
    <br>

    <form method="POST">
        <table class="table table-bordered">
            <tbody>
                
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="Title" value="<?php echo $data['Title'] ?>" placeholder="Enter Title" Required></td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td><input type="text" name="duration" value="<?php echo $data['Duration'] ?>" placeholder="Enter Duration" Required></td>
                </tr>
                <tr>
                    <td><a class="btn btn-danger" href="view.php" role="button">Back</a></td>
                    <td><input type="submit" name="submit" value="Submit"></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>