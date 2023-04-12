<?php
include("dbconnect.php");
include("header.php");

$getcategory = mysqli_query($conn, "SELECT * from category where name != '' group by name order by name") or die(mysqli_error($conn));
?>

<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
-->


    <script src="js/booklist.js"></script>

    <style>
        .float-container {
            border: 3px solid #fff;
            padding: 20px;
        }

        .float-child {
            width: 20%;
            float: left;
            /* padding: 20px; */
            /* border: 2px solid red; */
        }

        .text-left {
            text-align: left;
        }

        .pl22 {
            padding-left: 35%;
            /* color:#27AE60; */
        }

        .pl2 {
            padding-left: 12%;
        }

        .align-center {
            text-align: center;
            align-items: center;
            justify-content: center;
        }

        .marg {
            margin: 2%;
        }

        .pad {
            padding: 2%;
        }

        .checkbox {
            margin: 4px 0 0;
            line-height: normal;
            width: auto;
            height: 15px;
            display: inline;
            float: right;
        }

        .uppercase {
            text-transform: uppercase;
            display: inline-block;
            /* width: 69%; */
        }

        .big-font {
            font-size: 20px;
        }

        .float-child2 {
            width: 70%;
            float: left;
            padding: 20px;
            border: 2px solid red;
        }

        .green {
            padding-left: 5%;
            /* color:#27AE60; */

        }

        .chkbk {
            padding-left: 5%;
        }
    </style>
  <!-- <script src="js/script.js"></script> -->

</head>

<body>
    <div class="float-container">

        <div class="float-child col-lg-4">
            <div class="green text-center big-font">
                <h4> Categories</h4>
            </div><br>
            <?php
            while ($fetcateg = mysqli_fetch_object($getcategory)) {
                ?>
                <div class="row ">
                    <div class='' style='width:60%'>

                        <h2 class="text-left uppercase pl2">
                            <?= $fetcateg->name ?>
                        </h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <div class=''>

                        <input class="checkbox marg pad chkbk" type="checkbox" value="'%<?= $fetcateg->name ?>%'">
                    </div>
                </div>
            <?php } ?>
                <input type="submit" value="Filter" class="btn filter" name="filter" style="margin:10%;">
        </div>

        <div class="col-lg-8 ">

            <div class="single-products">
                <div class="row">
                    

                </div>
                <input type="hidden" class="curpagival" value="1">
            </div>
        </div>


<section>
    <div class="booksPreview">
        <div class="preview" data-target="1">
            <div class="imgSec">
                <i class="fas fa-arrow-left"></i>
                <img src="image/bk1.jpg" alt="">
                <h3>Book Name</h3>
            </div>
            <div class="detailSec">
                <i class="far fa-heart"></i>
                <i class="far fa-bookmark"></i>
                <div class="overview">
                    <h5>Overview about the book</h5>
                </div>
                <div class="ratings">

                </div>
                <div class="comments"></div>
                <div class="link"></div>
            </div>
        </div>
    </div>
</section>
</body>