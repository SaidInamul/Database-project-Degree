<?php
include("head.php");
include("dbconnection.php");
?>


<style>
#myDIV 
{
  display: none;
  width: 100%;
  padding: 50px 0;
  text-align: center;
  margin-top: 20px;
}

.center {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100px;
   
}

</style>

<body>



<div class="container">
    <br>
    <br>
    <br>

    <table class="table table-bordered">
        
		<thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Language</th>
                <th>Restriction</th>
            </tr>
        </thead>
        <tbody>
				
		<?php
		session_start();
		
		$id = $_GET['series_id'];
		
		
		?>
				
		<?php
		$query = "SELECT * FROM tv_series WHERE series_id = $id";
		$result = mysqli_query($con, $query);
		if (mysqli_num_rows($result))
		{
		?>
				
		<?php
		while($row = mysqli_fetch_array($result))
		{
			$qsql = mysqli_query($con, $query);
		?>
					
					
		<tr>
		<th><?php echo $row[1]; ?></th>
		<th><?php echo $row[6]; ?></th>
		<th><?php echo $row[5]; ?></th>
		<th><?php echo $row[7]; ?></th>
		</tr>
					
		<?php 
		}
		?>
				
		<?php 
		}
		else
		{
			echo "No result found";
		}
		?>	
				
        </tbody>
		
    </table>
</div>

<div class="center">
	<button onclick="myFunction()">Watch Now</button>	
</div>

<div id="myDIV">
<div class="container">
<?php
		
		$sql = "SELECT episode.Title, season.Title FROM episode INNER JOIN season ON episode.Season_id = season.Season_id WHERE series_id = $id";
		$result = mysqli_query($con, $sql);
		if(mysqli_num_rows($result))
		{
	?>	
		
    <table class="table table-bordered table-striped">
		<tr>
			<th width="500">Seasons</th>
			<th width="1000">Episodes</th>
			<th width="250">Stream</th>

		</tr>

		<?php
		while($row = mysqli_fetch_array($result))
		{
		?>
			<tr>
				<td align="center">
					<?php echo $row['Title']; ?>
				</td>
				<td align="center">
					<?php echo $row[0]; ?>				
				</td>
				<td align="center"><div class="row justify-content-md-center">
		<a class="btn btn-success" href="increment_view.php?series_id=<?php echo $id;?>" role="button">Stream</a>
	</div>				
				</td>
			</tr>
			
		<?php
			}
		?>
	</table>
	<br><br><br><br><br>
	<?php	
	}
	else
	{
		echo "No result found";
	}
	?>
</div>
</div>

	<div class="row justify-content-md-center">
		<a class="btn btn-danger" href="showall.php" role="button">Back</a>
	</div>

<script>
function myFunction() 
{
  var x = document.getElementById("myDIV");
  if (x.style.display === "block") 
  {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}
</script>

</body>
</html>