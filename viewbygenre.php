<?php
include("head.php");
include("dbconnection.php");
?>

<div class="container">
    <br>
    <h2>View Genre</h2>
    <br>

    <a href="viewbygenre.php?query=Crime" class="btn btn-info">Crime</a>
    <a href="viewbygenre.php?query=Thrillers" class="btn btn-info">Thrillers</a>
    <a href="viewbygenre.php?query=Comedy" class="btn btn-info">Comedy</a>
    <a href="viewbygenre.php?query=Romance" class="btn btn-info">Romance</a>
    <a href="viewbygenre.php?query=Drama" class="btn btn-info">Drama</a>
    <a href="viewbygenre.php?query=Mystery" class="btn btn-info">Mystery</a>
    <a href="viewbygenre.php?query=Animation" class="btn btn-info">Animation</a>
    <a href="viewbygenre.php?query=Family" class="btn btn-info">Family</a>
    <a href="viewbygenre.php?query=Fantasy" class="btn btn-info">Fantasy</a>
    <a href="viewbygenre.php?query=Action" class="btn btn-info">Action</a>
    <a href="viewbygenre.php?query=Sci-Fi" class="btn btn-info">Sci-Fi</a>
    <a href="viewbygenre.php?query=Slice of Life" class="btn btn-info">Slice of Life</a>
    <a href="viewbygenre.php?query=Supernatural" class="btn btn-info">Supernatural</a>
    <a href="viewbygenre.php?query=School" class="btn btn-info">School</a>
    <a href="viewbygenre.php?query=Horror" class="btn btn-info">Horror</a>
    <br>

            <?php
            if (isset($_GET['query'])) {
                ?>
                <table class="table">
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
                if ($_GET['query'] == "Crime") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 1";
                } elseif ($_GET['query'] == "Thrillers") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 2";
                } else if ($_GET['query'] == "Comedy") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 3";
                } else if ($_GET['query'] == "Romance") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 4";
                }else if ($_GET['query'] == "Drama") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 5";
                }else if ($_GET['query'] == "Mystery") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 6";
                }else if ($_GET['query'] == "Animation") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 7";
                }else if ($_GET['query'] == "Family") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 8";
                }else if ($_GET['query'] == "Fantasy") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 9";
                }else if ($_GET['query'] == "Action") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 10";
                }else if ($_GET['query'] == "Sci-Fi") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 11";
                }else if ($_GET['query'] == "Slice of Life") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 12";
                }else if ($_GET['query'] == "Supernatural") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 13";
                }else if ($_GET['query'] == "School") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 14";
                }else if ($_GET['query'] == "Horror") {
                    $sql = "SELECT * from tv_series join genre_tv_series ON tv_series.Series_id = genre_tv_series.Series_id WHERE genre_tv_series.Genre_id = 15";
                }

                 $qsql = mysqli_query($con, $sql);
                 while ($rs = mysqli_fetch_array($qsql)) {
                ?>
                 <tr>
                        <td><?php echo $rs[1];?></td>
                        <td><?php echo $rs[6];?></td>
                        <td><?php $rs[5];?></td>
                        <td><?php echo $rs[7];?></td>
                    </tr>
                    <?php 
                }
            }
            ?>
           
        </tbody>
    </table>
    <br>
    <br>
    <div class="row justify-content-md-center">
        <a class="btn btn-danger" href="user_front_page.php" role="button">Back</a>
    </div>
</div>