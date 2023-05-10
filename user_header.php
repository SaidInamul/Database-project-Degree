<?php
error_reporting(0);
include("dbconnection.php");

$query = "SELECT * FROM user_account LIMIT 1";
$result = mysqli_query($con, $query);
if (mysqli_num_rows($result))
{

    while ($row = mysqli_fetch_array($result))
    {
    ?>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <html xmlns="http://www.w3.org/1999/xhtml">

        <head>
            <title>TMF2234</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </head>

        <body>
            <div>
                <nav class="navbar navbar navbar-expand-sm bg-danger navbar-dark">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="user_front_page.php" >Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="showall.php" >TV Series</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="viewbygenre.php">By Genre</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="receipt.php?userid=<?php echo $row[0]; ?>">View Receipt</a>
                        </li>
                                                           
                        <li class="nav-item active">
                            <a class="nav-link" href="logout.php?logout" >Log Out</a>
                        </li>
                    </ul>
                </nav>
            </div>

    <?php
    }
}
    ?>
        </body>