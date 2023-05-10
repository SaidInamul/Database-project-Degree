<?php
error_reporting(0);
include("adheader.php");
session_start();
?>
<html>

<head>
	<title>View Section</title>
</head>

<body>
	<div class="container">
		<br>
		<h1>
			View Section (Admin)...
		</h1>
		<br>
		<h2>
			Summation view for each month...
		</h2>

		<?php
		$query = "SELECT SUM(total_view), CASE WHEN date < '2021-03-31' THEN 'March' WHEN date BETWEEN '2021-04-01' AND '2021-04-30' THEN 'April' WHEN date BETWEEN '2021-05-01' AND '2021-05-31' THEN 'May' WHEN date BETWEEN '2021-06-01' AND '2021-06-30' THEN 'June' ELSE 'July' END AS EndOfMonth FROM daily_view GROUP BY EndOfMonth";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-striped table-bordered">
				<tr>
					<th>Total views</th>
					<th>End of Month</th>
				</tr>

				<?php
				while ($row = mysqli_fetch_array($result)) {
				?>
					<tr>
						<td>
							<?php printf($row[0]); ?>
						</td>
						<td>
							<?php printf($row[1]); ?>
						</td>
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

		<br>
		<br>
		<br>
		<h2>
			Total views for pass each months for each tv series...
		</h2>

		<?php
		$query = "SELECT Series_id, SUM(total_view), CASE WHEN date < '2021-03-31' THEN 'March' WHEN date BETWEEN '2021-04-01' AND '2021-04-30' THEN 'April' WHEN date BETWEEN '2021-05-01' AND '2021-05-31' THEN 'May' WHEN date BETWEEN '2021-06-01' AND '2021-06-30' THEN 'June' ELSE 'July' END AS EndOfMonth FROM daily_view GROUP BY Series_id, EndOfMonth";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-striped table-bordered">
				<tr>
					<th>Series ID</th>
					<th>Total Views</th>
					<th>End of Month</th>
				</tr>

				<?php
				while ($row = mysqli_fetch_array($result)) {
				?>
					<tr>
						<td>
							<?php printf($row[0]); ?>
						</td>
						<td>
							<?php printf($row[1]); ?>
						</td>
						<td>
							<?php printf($row[2]); ?>
						</td>
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