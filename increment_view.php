<?php
include("dbconnection.php");
include'head.php';
if (isset($_GET['series_id']))
{

	$id = $_GET['series_id'];
	$date = date('Y-m-d');

	$query = "UPDATE tv_series SET total_views = total_views + 1 WHERE Series_id = $id";
	$result = mysqli_query($con, $query);

	$query2 = "INSERT INTO daily_view (Series_id, date, total_view) VALUES ($id, '$date', 1)";
	$result2 = mysqli_query($con, $query2);

	$query3 = "SELECT Title FROM tv_series WHERE series_id = $id LIMIT 1";
	$result3 = mysqli_query($con, $query3);
	if (mysqli_num_rows($result3))
	{
		while($row = mysqli_fetch_array($result3))
		{
	?>
	<br><br><br><br><br><br><br><br>
	<h1 class ="row justify-content-md-center"><?php echo "Streaming ".$row[0];?></h1>
	<br><br><br><br>
	<div class="row justify-content-md-center">
		<a class="btn btn-danger" href="user_front_page.php" role="button">Stop</a>
	</div>
	<?php
		}
	
	}
}	

?>