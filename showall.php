<!DOCTYPE html>
<html>

<head>
	<title>Show All TV</title>
</head>

<body>

	<?php
	include("head.php");
	?>

	<?php
	include 'dbconnection.php';
	session_start();
	?>


	<?php
	$query = "SELECT Series_id, Title FROM tv_series";
	$result = mysqli_query($con, $query);
	if (mysqli_num_rows($result)) {
	?>

		<div class="container">

			<br>
			<h1>TV SERIES</h1>
			<br>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th width="100">ID</th>
						<th width="3000">TITLE</th>

					</tr>
				</thead>
				<tbody>
					<?php
					while ($row = mysqli_fetch_array($result)) {
					?>

						<tr>
							<td align="center"><?php printf($row[0]); ?></td>
							<td align="center"><a href="showonebyone.php?series_id=<?php echo $row[0]; ?>"><?php echo $row[1]; ?></td>
						</tr>

					<?php
					}
					?>
				</tbody>
			</table>

		<?php
	} else {
		echo "No result found";
	}
		?>
		</div>
		<br>
		<br>
		<div class="container">
		<a class="btn btn-danger" href="user_front_page.php" role="button">Back</a>
	</div>
</body>

</html>