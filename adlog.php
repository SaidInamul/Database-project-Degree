<?php
include("header.php");
?><html>

<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="login.css">
</head>

<body>
		<div class="wrapper fadeInDown">
			<div id="formContent">
				<!-- Tabs Titles -->

				<!-- Icon -->
				<div class="fadeIn first">
					<img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="Admin Icon" />
				</div>

				<!-- Login Form -->
				<form action="login_validate_admin.php" method="post">
					<input type="text" placeholder="Email" name="email" id="email" class="fadeIn second">
					<input type="password" placeholder="Password" name="password" id="password" class="fadeIn third">
					<input type="Submit" name="login" value="Login" class="fadeIn fourth" />
				</form>

				<!-- Remind Password -->
				<div id="formFooter">
					<a class="underlineHover" href="login.php">User login</a>
				</div>

			</div>
		</div>
</body>

</html>