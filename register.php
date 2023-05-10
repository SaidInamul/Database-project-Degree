<?php
include("header.php");
include("dbconnection.php");
session_start();
if (isset($_POST['submit']))
{

	$name = $_POST['Username'];
	$phone = $_POST['Phone'];
	$email = $_POST['Email'];
	$pass = $_POST['Password'];
	$bt = $_POST['Birthday'];
	$date = date('Y-m-d');
	$duedate = date('Y-m-d', strtotime('+1 Months'));
	$account = $_POST['select'];

	if ($email != "" && $pass != "" && $name != "" && $phone != "" && $bt != "")
	{
		$sql = "INSERT INTO `user_account` (`Username`, `Email`, `Password`, `Phone`, `Birthday`, `StartDate`, `EndDate`, `Account_Type_ID`) VALUES ('$name','$email','$pass','$phone','$bt','$date','$duedate', '$account')";

		if ($qsql = mysqli_query($con, $sql))
		{
			echo "Records added successfully.";

			$sql2 = "SELECT * FROM user_account WHERE Username = '$name' AND Password = '$pass' LIMIT 1";
			$result = mysqli_query($con, $sql2);

			if (mysqli_num_rows($result) > 0)
			{
				$row = mysqli_fetch_array($result);
				$_SESSION['id'] = $row['Account_id'];
				$_SESSION['name'] = $row['Username'];

				$query = "INSERT INTO receipt (user_id, Date) VALUES ($_SESSION[id], '$date')";
				$result2 = mysqli_query($con, $query);
			}	

     		header("Refresh:1 url=user_front_page.php");
		} 
		else
		{
		echo mysqli_error($con);
		}
	}
	else
	{
		header("Location:register.php?Empty=Please Enter the Empty Blanks.");
	}
}

?>

<div class="container">
	<br>
	<h2>Add Account</h2>
	<br>

	<form method="post">
		<table class="table">
			<tbody>
				<tr>
					<td width="34%">Username</td>
					<td width="66%"><input type="text" name="Username"/></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="Phone"/></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="email" name="Email"></textarea></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="Password" /></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="confirmpassword"/></td>
				</tr>
				<tr>
					<td>Date Of Birth</td>
					<td><input type="date" name="Birthday"/></td>
				</tr>
				<td>Account Type</td>
					<td><select name="select" id="select">
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
						</select></td>

				<tr>
					<td colspan="2" align="center"><input type="submit" name="submit" id="submit" value="Submit" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	
</div>
</div>
</div>
<div class="clear"></div>
</div>
</div>