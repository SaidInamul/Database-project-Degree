<?php

include("header.php");
session_start();

if (isset($_POST['submit'])) {

	$name = $_POST['Username'];
	$pass = $_POST['Password'];

	if ($name != "" && $pass != "")
	{
		$sql = "SELECT * FROM user_account WHERE Username='$name' AND Password='$pass' LIMIT 1";	
		$qsql = mysqli_query($con, $sql);

		if (mysqli_num_rows($qsql) >= 1)
		{
			$rslogin = mysqli_fetch_array($qsql);
			$_SESSION['id'] = $rslogin['Account_id'];
			$_SESSION['name'] = $rslogin['Username'];
			header("Location:user_front_page.php"); 
		}
		else
		{
		header("Location:login.php?Empty=Please Enter Your Email and Password correctly.");
		}

		mysqli_close ($con);
	}

	else
	{
		header("Location:login.php?Empty=Please Enter Your Email and Password in the Empty Blanks.");
	}

	
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="login.css">
	<!------ Include the above in your HEAD tag ---------->
</head>

<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
				<img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
			</div>

			<!-- Login Form -->
			<form method="post">

				<input type="text" class="fadeIn second" name="Username" placeholder="Username">

				<input type="password" class="fadeIn third" name="Password" placeholder="Password">

				<input type="submit" class="fadeIn fourth" name="submit" value="Login">
			</form>

			<!-- Remind Password -->
			<div id="formFooter">
				<a class="underlineHover" href="adlog.php">Admin Login</a>
			</div>

		</div>
	</div>
</body>
