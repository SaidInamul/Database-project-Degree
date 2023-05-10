<?php
error_reporting(0);
include("dbconnection.php");
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
                    <a class="nav-link" href="adminpage.php">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="View.php">View Section</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="###" id="navbardrop" data-toggle="dropdown">Add Section</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addtv.php">Add TV Series</a>
                        <a class="dropdown-item" href="addgenre.php">Add Genre</a>
                        <a class="dropdown-item" href="addactor.php">Add Actor</a>
                        <a class="dropdown-item" href="adddirector.php">Add Director</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="###" id="navbardrop" data-toggle="dropdown">Report</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="report_actor.php">Actor</a>
                        <a class="dropdown-item" href="report_genre.php">Genre</a>
                        <a class="dropdown-item" href="report_view.php">View</a>
                    </div>
                </li>
                
                <li class="nav-item active">
                    <a class="nav-link" href="logout.php?logout">Log Out</a>
                </li>
    </div>