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
		Report TV Series based on Genre...
	</h2>
	<?php
		$query = "SELECT tv_series.Series_id, tv_series.Title, genre.Name from tv_series join genre_tv_series on tv_series.Series_id = genre_tv_series.Series_id JOIN genre ON genre.Genre_id = genre_tv_series.Genre_id ORDER BY Series_id ASC";
		$result = mysqli_query($con, $query);
		if(mysqli_num_rows($result))
		{
	?>	
			<table class="table table-striped table-bordered">
				<tr>
					<th width="100">Series ID</th>
					<th width="350">Title</th>
					<th width="250">Genre</th>
				</tr>

				<?php
				while($row = mysqli_fetch_array($result))
				{
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
		}

		else
		{
			echo "No result found";
		}
		?>
</div>
</body>
</html>




