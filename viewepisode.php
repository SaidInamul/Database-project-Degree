<?php
include 'dbconnection.php';
include 'head.php'
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
		<h2>List of episode for selected season</h2>
		<br>

		<?php
		$id = $_GET['id'];
		$query = "SELECT `Ep_id`, `Title`, `Duration` FROM `episode` where Season_id=$id";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>
			<table class="table table-bordered">
				<tr>
					<th width="100">Episode ID</th>
					<th width="300">Title</th>
					<th>Duration</th>
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

						<td><a href="edep.php?id=<?php echo $row['Ep_id']; ?>">Edit</a></td>
						<td><a href="delep.php?id=<?php echo $row['Ep_id']; ?>">Delete</a></td>

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