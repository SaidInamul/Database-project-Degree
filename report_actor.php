<?php
error_reporting(0);
include("adheader.php");
session_start();
?>

<html>

<head>
	<title>Report for Actor</title>
</head>

<body>
	<div class="container">
		<br>
		<h1>
			Report Section (Admin)...
		</h1>
		<br>
		<h2>
			Report TV Series based on Actor/Actress...
		</h2>

		<?php
		$query = "SELECT tv_series.Series_id, tv_series.Title, tv_series_cast.Cast_Name, actor.Name FROM tv_series JOIN tv_series_cast ON tv_series.Series_id = tv_series_cast.Series_id JOIN actor ON actor.Actor_id = tv_series_cast.Actor_id ORDER BY Series_id ASC";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-striped table-bordered">
				<tr>
					<th width="100">Series ID</th>
					<th width="350">Title</th>
					<th width="250">Cast Name</th>
					<th width="250">Actor/Actress Name</th>
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
						<td>
							<?php printf($row[3]); ?>
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