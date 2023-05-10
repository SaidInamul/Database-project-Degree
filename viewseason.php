<?php
include 'dbconnection.php';
include 'head.php';
?>
<html>

<head>
	<title>View Section</title>
</head>

<body>

	<div class="container">
		<br>
		<h1>Season View Section (Admin)...</h1>
		<br>
		<h2>List of season of tv series.</h2>
		<br>

		<?php
		$id = $_GET['id'];
		$query = "SELECT `Season_id`, `Title`, `Total Episode` FROM `season` where Series_id=$id";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-bordered">
				<tr>
					<th width="100">Season ID</th>
					<th width="300">Title</th>
					<th>Total episode</th>
					<th>Add episode</th>
					<th>View episode</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>

				<?php
				while ($row = mysqli_fetch_array($result)) {
				?>
					<tr>
						<td align="center">
							<?php printf($row[0]); ?>
						</td>
						<td align="center">
							<?php echo $row[1]; ?>
						</td>
						<td align="center">
							<?php echo $row[2]; ?>
						</td>
						<td><a href="addepisode.php?id=<?php echo $row['Season_id']; ?>">Add episode</a></td>
						<td><a href="viewepisode.php?id=<?php echo $row['Season_id']; ?>">View episode</a></td>
						<td><a href="editse.php?id=<?php echo $row['Season_id']; ?>">Edit</a></td>
						<td><a href="deletese.php?id=<?php echo $row['Season_id']; ?>">Delete</a></td>

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
	<div class="row justify-content-md-center">
		<a class="btn btn-danger" href="view.php" role="button">Back</a>
	</div>
</body>

</html>