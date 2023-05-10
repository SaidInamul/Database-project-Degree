<?php

include "dbconnection.php";

$id = $_GET['id'];

$del = mysqli_query($con,"delete from season where Season_id = $id"); 

if($del)
{
    mysqli_close($con);
	echo "Successfully deleting record";
    header("Refresh:1 url=view.php"); // redirects to all records page
    exit;	
}
else
{
    echo "Error deleting record"; // display error message if not delete
}
?>