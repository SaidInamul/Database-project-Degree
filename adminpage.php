<?php
error_reporting(0);
include("adheader.php");
session_start();
?>

<html>

<head>
	<title>Admin Front Page</title>
</head>

<body>
<div class="container">
	<br>
	<h1>Welcome to the Home Page (Admin)...</h1>
	<br>
	<h3>
		Top 5 tv series with most viewers...
		<br>
		<br>
		<?php

		$query = "SELECT * FROM tv_series ORDER BY total_views DESC LIMIT 5";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-striped table-bordered">
				<tr>
					<th>Series ID</th>
					<th>Title</th>
					<th>Total views</th>
				</tr>

				<?php

				while ($row = mysqli_fetch_array($result)) {
				?>

					<tr>
						<td><?php printf($row[0]); ?></td>
						<td><?php echo $row[1]; ?></td>
						<td><?php echo $row[8]; ?></td>
					</tr>

				<?php
				}
				?>
			</table>

		<?php
		} else {
			echo "No result found";
		}


		?>
</div>
</body>

</html>