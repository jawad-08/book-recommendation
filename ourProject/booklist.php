<?php
include("header.php");
include("dbconnect.php");

$getcategory = mysqli_query($conn, "SELECT * from category where name != '' group by name order by name") or die (mysqli_error($conn));

?>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
        .green{
            padding-left:5%;
            /* color:#27AE60; */

        }
        .chkbk{
            padding-left:5%;
        }
    </style>
    
</head>

<body>
    <div class="float-container">
        <div class="row">

        <div class="float-child col-lg-4">
            <div class="green text-center big-font">
                <h4> Categories</h4>
            </div><br>
            <?php
            while ($fetcateg = mysqli_fetch_object($getcategory)) {
                ?>
            <div class="row ">
                <div class='' style='width:60%'>
                    
                    <h2 class="text-left uppercase pl2"><?= $fetcateg->name ?> </h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class=''>
                    
                    <input class="checkbox marg pad chkbk" type="checkbox">
                </div>
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

        <!-- <div class="float-child2"> -->
            <div class="col-lg-8 ">

                    <!-- <div class="product-show-option">
                        

                        <div class="row float-right">
                            <!-- <div class="select-option">

                                    <select class="sorting">
                                        <option value="">Sort by</option>
                                        <option value="0">New Arrivals</option>
                                        <option value="1">Price : High-Low</option>
                                        <option value="2">Price : Low-High</option>
                                    </select>
                                </div> -->
                        <!-- </div>
                    </div> --> 

                    <div class="mar-top5 single-products">
                    </div>
                    <input type="hidden" class="curpagival" value="1">
                    <!--                        <div class="loading-more">
                                                    <i class="icon_loading"></i>
                                                    <a href="#">
                                                        Loading More
                                                    </a>
                                                </div>-->


                </div>
        <!-- </div> -->
        </div>

    </div>
</body>