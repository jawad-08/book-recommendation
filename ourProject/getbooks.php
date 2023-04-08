<?php 
include('dbconnect.php');
$getproducts = mysqli_query($conn ,"SELECT * FROM book1 ")or die (mysqli_error($conn));

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
        while ($fetproducts = mysqli_fetch_object($getproducts)) {
            echo "<div class='row'>";
            
            echo "</div>";
        }
        ?>
</div>