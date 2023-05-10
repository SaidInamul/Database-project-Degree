<?php
include("user_header.php");
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>

	<title>Page Title</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<style>
		body {
			font-family: Arial, Helvetica, sans-serif;
			margin: 0;
		}

		.header {
			padding: 80px;
			text-align: center;
			background: #6495ED;
			color: white;
		}

		.header h1 {
			font-size: 40px;
		}


		.navbar {
			overflow: hidden;
			background-color: #333;
		}

		.navbar a {
			float: left;
			font-size: 16px;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		.dropdown {
			float: left;
			overflow: hidden;
		}

		.dropdown .dropbtn {
			font-size: 16px;
			border: none;
			outline: none;
			color: white;
			padding: 14px 16px;
			background-color: inherit;
			font-family: inherit;
			margin: 0;
		}

		.navbar a:hover,
		.dropdown:hover .dropbtn {
			background-color: red;
		}

		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f9f9f9;
			min-width: 160px;
			box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
			z-index: 1;
		}

		.dropdown-content a {
			float: none;
			color: black;
			padding: 12px 16px;
			text-decoration: none;
			display: block;
			text-align: left;
		}

		.dropdown-content a:hover {
			background-color: #ddd;
		}

		.dropdown:hover .dropdown-content {
			display: block;
		}

		.table {
			margin-left: auto;
			margin-right: auto;
		}
	</style>

</head>

<body>
	<div class="container">
		<header class="jumbotron my-4" style="background-color:#000000 ; background-size: auto;">
			<h1 class="text-center" style="color:white;">TMFlix</h1>
			<p class="text-center" style="color:white;">Stream your favorite series here!</p>
		</header>
	</div>

	<div class="container">
		<br>
		<h2 class="text-center">MOST POPULAR</h2>

		<br>

		<?php
		$query = "SELECT * FROM tv_series ORDER BY total_views DESC LIMIT 5";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result)) {
		?>

			<table class="table table-bordered table-striped">


				<thead>
					<tr>
						<th width="100">TITLE</th>
						<th width="3000">DESCRIPTION</th>
						<th width="50">TOTAL VIEWS</th>
					</tr>
				</thead>

				<tbody>
					<?php
					while ($row = mysqli_fetch_array($result)) {
					?>

						<tr>
							<td align="center"><?php echo $row[1]; ?></td>
							<td align="center"><?php echo $row[6]; ?></td>
							<td align="center"><?php echo $row[8]; ?></td>
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

</body>

</html>