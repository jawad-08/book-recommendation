<?php
session_start();
include('dbconnect.php');
$isbn = $_REQUEST["code"];

if (isset($_POST["submit"])) {
    $a = 1;
    $code = $_POST["code"];
    $star = $_POST["star"];

    
    $login = mysqli_query($conn, "SELECT * FROM `user` WHERE `username` = '$_SESSION[username]'") or die(mysqli_error($conn));
$flogin = mysqli_fetch_array($login);
$userid = $flogin['id'];
echo $userid;

                              
    // if (mysqli_num_rows($login) == 1) {
    //     print '<script type="text/javascript">';
    //     print 'alert("Username Already Exist")';
    //     print '</script>';
    // }else{
    //     if ($fname != "" && $pass != "") {
        print "INSERT  INTO `ratings`(`userid`,`isbn`,`bkratings`)
            VALUES('$userid', '$code','$star')";
            mysqli_query($conn, "INSERT  INTO `ratings`(`userid`,`isbn`,`bkratings`)
            VALUES('$userid', '$code','$star')") or die(mysqli_error($conn));
    
    
        //     $_SESSION["username"] = $_POST['uname'];
        //     header("Location:main.php");
        // } else {
        //     $_SESSION["username"] = "";
        // }
    // }   
}

$getproducts = mysqli_query($conn, "SELECT *  FROM `book1`  where isbn = '$isbn'") or die(mysqli_error($conn));
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

    input[type="radio"] {
  display: none;
}

label {
  display: inline-block;
}

input[type="radio"]:checked+label {
  cursor: default;
  color: red;
}
</style>
<link rel="stylesheet" href="fontawesome/css/font-awesome.min.css">
        <form action="" method="POST">


<div class="row">

    <?php
    $fetchproducts = mysqli_fetch_array($getproducts);
        ?>
        <div class="col-lg-4 col-xs-6">
            <div class="card-wrapper">
                <div class="card">
                    
        
                <!-- <div class='ratin '  align='center' data-toggle="modal" data-target="#exampleModal">
                    <i class='fas fa-star fa-2x' >Ratings</i>
                </div> -->
                    <div class="image-wrapper">
                        
                        <img src="<?php echo $fetchproducts['coverImg']; ?>" alt="" class="image"
                            style='width:250px;height:450px' />
                    </div>
                    <div class="content-wrapper">
                        <div class="title">
                            <h4>
                                <input type='hidden' name='code' value='<?php echo $isbn ?>'> 
                                <?php echo $fetchproducts['title']; ?>
                            </h4>
                        </div>
                        <div class="description">
                                <?php echo $fetchproducts['description']; ?>

                        </div>
                        <div class="rating">
                            <input id="star1" name="star" type="radio" value='1'>
                            <label for="star1"><i class="fa fa-star"></i></label>
                            <input id="star2" name="star" type="radio"  value='2'>
                            <label for="star2"><i class="fa fa-star"></i></label>
                            <input id="star3" name="star" type="radio"  value='3'>
                            <label for="star3"><i class="fa fa-star"></i></label>
                            <!-- Use <?php echo("checked") ?> to set the correct star -->
                            <input id="star4" name="star" type="radio"  value='4'>
                            <label for="star4"><i class="fa fa-star"></i></label>
                            <input id="star5" name="star" type="radio"  value='5'>
                            <label for="star5"><i class="fa fa-star"></i></label>
                        </div>
                        <div class=''>
                            <input type="submit" name="submit" value="Submit">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>