<?php
error_reporting(0);
session_start();
include("dbconnect.php");

if (isset($_POST["submit"])) {

    $login = mysqli_query($conn, "SELECT * FROM `login` WHERE `name` = '" . mysqli_real_escape_string($conn, $_POST['name']) . "'
                              AND `pwd` = '" . mysqli_real_escape_string($conn, $_POST['pwd']) . "'") or die(mysqli_error($conn));

    if (mysqli_num_rows($login) == 1) {
        $_SESSION["username"] = $_POST['name'];
        header("Location:main.php");

    } else {
        $_SESSION["username"] = "";
    }
}


if (isset($_POST["submit2"])) {
    $a = 1;
    $fname = $_POST["fname"];
    $uname = $_POST["uname"];
    $pass = $_POST["pass"];
    $email = $_POST["email"];
    $gender = $_POST["gender"];
    $mvouch = $qvouch;

    if ($fname != "" && $pass != "") {
        mysqli_query($conn, "INSERT INTO `user`(`id`,`name`,`username`,`password`,`email`,`gender`)
    VALUES('$qvouch' , '$fname', '$uname','$pass','$email','$gender')") or die(mysqli_error($conn));
    }
    if (mysqli_num_rows($login) == 1) {
        $_SESSION["username"] = $_POST['name'];
        header("Location:main.php");

    } else {
        $_SESSION["username"] = "";
    }

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GetBooks</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <!-- header section starts  -->

    <header class="header">

        <div class="header-1">

            <a href="#" class="logo"> <i class="fas fa-book"></i> GetBooks </a>

            <form action="" class="search-form">
                <input type="search" name="" placeholder="Search here..." id="search-box">
                <label for="search-box" class="fas fa-search"></label>
            </form>

            <div class="icons">
                <div id="search-btn" class="fas fa-search"></div>
                <?php
                $usr = "";
                if ($_SESSION['username'] != "") {
                    $usr = "1";
                    echo "<div id='login-btn' class='fas fa-user'>Hey " . $_SESSION['username'];
                    echo "<a href='logout.php'><i class='fas fa-power-off'></i> Logout</a></div>";
                } else {
                    echo "<div id='login-btn' class='fas fa-user'> LOG IN / </div>";
                }
                if ($_SESSION['username'] == "") {
                    echo "<div id='signup-btn' class='fa fa-user'> SIGN UP</div>";
                }
                echo "<input type='hidden' id='usrnam' value='$usr'>";
                ?>
            </div>
        </div>

        <div class="header-2">
            <nav class="navbar">
                <a href="main.php">Home</a>
                <a href="explore.php">Explore</a>
                <a href="booklist.php">My Books</a>
                <a href="about.php">About</a>
            </nav>
        </div>

    </header>

    <!-- header section ends -->

    <!-- bottom navbar  -->

    <!-- <nav class="bottom-navbar">
        <a href="#home" class="fas fa-home"></a>
        <a href="#featured" class="fas fa-list"></a>
        <a href="#arrivals" class="fas fa-tags"></a>
        <a href="#reviews" class="fas fa-comments"></a>
        <a href="#blogs" class="fas fa-blog"></a>
    </nav> -->

    <!-- login form  -->

    <div class="login-form-container">

        <div id="close-login-btn" class="fas fa-times"></div>

        <form action="interested.php" method="POST">
            <h3>sign in</h3>
            <span>username</span>
            <input type="text" name="name" class="box" placeholder="enter your username" id="">
            <span>password</span>
            <input type="password" name="pwd" class="box" placeholder="enter your password" id="pwd"
                style="margin-bottom: 5%">
            <input type="checkbox" onclick="showPass()"
                style="margin-right: 2%;vertical-align: middle;margin-left: 1%;width: 20px;height: 20px;"><span
                style="display: inline;">Show Password</span>

            <input type="submit" value="sign in" class="btn" name="submit">
            <!-- <p>forget password ? <a href="#">click here</a></p>
    <p>don't have an account ? <a href="#">create one</a></p> -->
        </form>

    </div>


    <!-- signup form  -->

    <div class="signup-form-container">

        <div id="close-signup-btn" class="fas fa-times"></div>

        <form action="" method="POST" onsubmit="return verifyPassword()">
            <h3>sign up</h3>
            <span>full name</span>
            <input type="text" name="fname" class="box" placeholder="enter your full name" id="">
            <span>username</span>
            <input type="text" name="uname" class="box" placeholder="enter your username" id="">
            <span>email</span>
            <input type="email" name="email" class="box" placeholder="enter your email" id="">
            <span>password</span>
            <input type="password" name="pass" class="box" placeholder="enter your password" id="pass"
                style="margin-bottom: 5%">

            <span>confirm password</span>
            <input type="password" name="conpass" class="box" placeholder="enter your password again" id="conpass">

            <span style="margin-bottom: 2%">gender</span>
            <input type="radio" style="width:20px;height:25px" name="gender" value="male"><span
                style="display: inline;vertical-align: top;padding-left: 2%;padding-right: 2%;">Male</span>
            <input type="radio" style="width:20px;height:25px" name="gender" value="female"><span
                style="display: inline;vertical-align: top;padding-left: 2%;">Female</span>

            <span id="message" style="color:red"> </span>
            <!-- <input type="checkbox" onclick="showPass2()"
                style="margin-right: 2%;vertical-align: middle;margin-left: 1%;width: 20px;height: 20px;"><span
                style="display: inline;">Show Password</span> -->



            <input type="submit" value="sign up" class="btn" name="submit2">
            <!-- <p>forget password ? <a href="#">click here</a></p>
            <p>don't have an account ? <a href="#">create one</a></p> -->
        </form>

    </div>
    <script>
        const activePage = window.location.pathname;
        const navLinks = document.querySelectorAll('nav a').
            forEach(
                link => {
                    if (link.href.includes(`${activePage}`)) {
                        link.classList.add('active');
                    }
                }

            )
    </script>