<?php
include("dbconnection.php");
session_start();
include("head.php");
$userid = $_SESSION['id'];

?>
<div class="container">
	<br>
	<h2>View Receipt</h2>
	<br>
		<table class="table">
			<thead>
				<tr>
					<th>Date</th>
					<th>Account ID</th>
					<th>User Name</th>
					<th>Bill Amount</th>
				</tr>
			</thead>
			<tbody>

				<?php
				$sql = "SELECT receipt.Date, user_account.Account_id, user_account.Username, account_type.price from receipt JOIN user_account on receipt.user_id = user_account.Account_id JOIN account_type ON account_type.Account_Type_ID = user_account.Account_Type_ID where user_id = $userid";
				$qsql = mysqli_query($con, $sql);
				while ($rs = mysqli_fetch_array($qsql)) {
					?>
					<tr>
      					<td><?php echo $rs[0];?></td>
      					<td><?php echo $userid;?></td>
      					<td><?php echo $rs[2];?></td>
      					<td><?php echo $rs[3];?></td>
    				</tr>
    				<?php
				}
				?>
			</tbody>
		</table>
		<div class="row justify-content-md-center">
		<a class="btn btn-danger" href="user_front_page.php" role="button">Back</a>
	</div>
</div>
