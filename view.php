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
			List of tv series...
		</h2>
		<br>
		<br>

		<?php
		$query = "SELECT Series_id, Title FROM tv_series";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-striped table-bordered">
				<tr>
					<th>Series ID</th>
					<th>Title</th>
					<th>Add season</th>
					<th>View season</th>
					<th>Director TV Series</th>
					<th>Cast TV Series</th>
					<th>Genre TV Series</th>
					<th>Edit</th>
					<th>Delete</th>

				</tr>

				<?php
				while ($row = mysqli_fetch_array($result)) {
				?>
					<tr>
						<td>
							<?php printf($row[0]); ?>
						</td>
						<td>
								<?php echo $row[1]; ?>

						</td>
						<td><a href="addseason.php?id=<?php echo $row['Series_id']; ?>">Add season</a></td>
						<td><a href="viewseason.php?id=<?php echo $row['Series_id']; ?>">View season</a></td>
						<td><a href="ditv.php?id=<?php echo $row['Series_id']; ?>">Add director</a></td>
						<td><a href="catv.php?id=<?php echo $row['Series_id']; ?>">Add cast</a></td>
						<td><a href="getv.php?id=<?php echo $row['Series_id']; ?>">Add genre</a></td>
						<td><a href="edit.php?id=<?php echo $row['Series_id']; ?>">Edit</a></td>
						<td><a href="delete.php?id=<?php echo $row['Series_id']; ?>">Delete</a></td>

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