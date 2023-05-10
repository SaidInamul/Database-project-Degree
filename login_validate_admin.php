<?php

include 'dbconnection.php';
session_start();

	if (isset($_POST['login']))
	{
		$email = $_POST['email'];
		$pass = $_POST['password'];
		

		if ($email != "" && $pass != "")
		{
			
			$query = "SELECT * FROM admin WHERE email = '$email' AND password = '$pass' LIMIT 1";
			$result = mysqli_query ($con, $query);
			
			if (mysqli_num_rows ($result) > 0)
			{
				$_SESSION['ADemail'] = $email;
				$_SESSION['ADpassword'] = $pass;

				$row = mysqli_fetch_array ($result);

				$_SESSION['id'] = $row['admin_id'];
				$_SESSION['name'] = $row['name'];
				echo "<br><br>Hello there !!! " .$_SESSION['ADname'];
				header("Location:adminpage.php");

			}

			else
			{
				
				header("Location:adlog.php?Empty=Please Enter Your Email and Password correctly.");
			}

			mysqli_close ($con);
		}

		else
		{
			header("Location:adlog.php?Empty=Please Enter Your Email and Password in the Empty Blanks.");
		}
		
	}

	else
	{
		echo "<br><br>Invalid";
	}	

	echo "<br><br>Thank you";

mysqli_close ($con);

?>
