<?php 
include('dbconnect.php');
$getproducts = mysqli_query($conn ,"SELECT *  FROM books  limit 100 ")or die (mysqli_error($conn));

?>
<style>
    .mainfont{
        text-transform: uppercase;
        
    }
    .catname{
        justify-content: center;
        align-items: center;
        text-align: center;
        text-transform: uppercase;
    }
</style>

<div class="container-fluid">
    <?php 
        while ($fprod = mysqli_fetch_array($getproducts)) {
            ?>

            <div class="col-lg-3">
            <div class="product-item">
                <div class="pi-pic">
                    <a href="product.php?code=<?= $fprod['bktitle']; ?>" target="_blank">
                        <img src="<?= $fprod['imgurll'] ?>" style="width:250px;height: 200px;border-radius:30px;"  class="newimg" data-id="<?= $fprod['imgurll'] ?>" alt="">
                    </a>
                    
                    
                </div>
                    <div class="pi-text">
                        <h5 class="mainfont"><?= $fprod['bktitle']; ?></h5>
                        
                    </div>
                <!-- </a> -->
            </div>
        </div>

            
            <?php
        }
        ?>
</div>