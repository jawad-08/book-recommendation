<?php
include("header.php");
include("dbconnect.php");

$getcategory = mysqli_query($conn, "SELECT * from category") or die (mysqli_error($conn));

?>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<style>
        .float-container {
            border: 3px solid #fff;
            padding: 20px;
        }

        .float-child {
            width: 30%;
            float: left;
            padding: 20px;
            border: 2px solid red;
        }

        .text-center {
            text-align: center;
        }

        .pl22 {
            padding-left: 35%;
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
            width: 69%;
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
    </style>
</head>

<body>
    <div class="float-container">

        <div class="float-child">
            <div class="green text-center big-font">
                <h4> Categories</h4>
            </div><br>
            <?php
            while ($fetcateg = mysqli_fetch_object($getcategory)) {
                ?>
            <div class="row ">
                <h2 class="text-center align-center uppercase pl22"><?= $fetcateg->name ?> </h2> <input class="checkbox marg pad" type="checkbox">
            </div>
            <?php } ?>
            <!-- <div class="row ">
                <h2 class="text-center align-center uppercase pl22">Adventure</h2> <input class="checkbox marg pad" type="checkbox">
            </div>
            <div class="row ">
                <h2 class="text-center align-center uppercase pl22">Cooking</h2> <input class="checkbox marg pad" type="checkbox">
            </div>
            <div class="row ">
                <h2 class="text-center align-center uppercase pl22">Action</h2> <input class="checkbox marg pad" type="checkbox">
            </div> -->
        </div>

        <div class="float-child2">
            <div class="blue"><?= null ?> </div>
        </div>

    </div>
</body>