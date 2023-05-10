<?php
session_start();
include("header.php");
if (!isset($_SESSION['Account_id'])) {
	echo "<script>window.location='login.php';</script>";
  }
$id = $_SESSION['Account_id'];

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
					<th>Bill Amount</th>
				</tr>
			</thead>
			<tbody>

				<?php
				$sql = "SELECT receipt.Date, account_type.price
				from receipt
				inner JOIN account_type on receipt.Account_Type_ID=account_type.Account_Type_ID where user_id =$id ";
				$qsql = mysqli_query($con, $sql);
				while ($rs = mysqli_fetch_array($qsql)) {
					echo "<tr>
          					<td>$rs[Date]</td>
          					<td> $id</td>
          					<td>$rs[price]</td>
        				</tr>";
				}
				?>
			</tbody>
		</table>
	</form>
</div>

<div class="clear"></div>

<?php
include("footers.php");
?>