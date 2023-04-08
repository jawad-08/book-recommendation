<?php
//error_reporting(0);
include('dbconnect.php');
$getproducts = mysqli_query($conn, "SELECT *  FROM book1  limit 12 ") or die(mysqli_error($conn));

?>
<style>
    .mainfont {
        text-transform: uppercase;
    }

    .catname {
        justify-content: center;
        align-items: center;
        text-align: center;
        text-transform: uppercase;
    }
</style>
<div class="row">

    <?php
    while ($fetchproducts = mysqli_fetch_array($getproducts)) {
        ?>
        <div class="col-lg-4 col-xs-6">
            <div class="card-wrapper">
                <div class="card">
                    <div class="image-wrapper">
                        <img src="<?php echo $fetchproducts['coverImg']; ?>" alt="" class="image"
                            style='width:250px;height:450px' />
                    </div>
                    <div class="content-wrapper">
                        <div class="title">
                            <h4>
                                <?php echo $fetchproducts['title']; ?>
                            </h4>
                        </div>
                        <div class="description">
                            This is one of the coolest pennants money can buy. Hang it on your wall, above your cool leather
                            shoes,
                            or even in your Victorian-era bathroom.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }
    ?>
</div>