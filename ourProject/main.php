<?php
include("header.php");
?>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="row">

        <div class="content">
            <h3>"Good Books Don't Give Up All The Secrets At Once.."</h3>
        </div>

        <div class="swiper books-slider">
            <div class="swiper-wrapper">
                <a href="#" class="swiper-slide"><img src="image/bk10.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/bk2.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/bk7.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/bk5.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/bk3.jpg" alt=""></a>
            </div>
            <img src="image/stand.png" class="stand" alt="">
        </div>

    </div>

</section>



<section class="featured" id="featured">

    <h1 class="heading"> <span>Top-rated books</span> </h1>

    <div class="swiper featured-slider">

        <div class="swiper-wrapper">
            <?php
            // mysqli_query($conn, "Create temporary table rate5 SELECT a.*,b.bkratings FROM books a,ratings b WHERE a.ISBN = b.ISBN AND b.bkratings = 5 limit 10
            //                 ");
            // mysqli_query($conn, "Create temporary table rate4 SELECT a.*,b.bkratings FROM books a,ratings b WHERE a.ISBN = b.ISBN AND b.bkratings = 4 limit 10 
            //                 ");

            $gettpbk = mysqli_query($conn, "SELECT * FROM book1 where rating >= 4 and rating <= 5  
                                                 limit 10");

            while ($fettpbk = mysqli_fetch_array($gettpbk)) {
                ?>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a class="fas fa-eye" data-name="1"></a>
                    </div>
                    <div class="image">
                        <img src="<?= $fettpbk['coverImg'] ?>" alt="">
                    </div>
                    <div class="content">
                        <b>
                            <?= $fettpbk['title'] ?>
                        </b>
                        <div class="stars">
                            <?php
                            $bkrating = $fettpbk['rating'];
                            for ($i = 0; $i < $bkrating; $i++) {
                                ?>
                                <i class="fas fa-star"></i>
                            <?php }
                            ?>
                            <!-- <i class="fas fa-star" value=<?= $fettpbk['bkratings'] ?>></i> -->
                            <!-- <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i> -->
                        </div>
                    </div>
                </div>
            <?php }
            ?>



        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<!-- Book Preview Section Starts here -->
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
<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <!-- <h3>our locations</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> france </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> africa </a> -->
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> Home </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> Explore </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> My Books </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> About </a>
        </div>

        <div class="box">
            <h3>Contact Info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#"> <i class="fas fa-envelope"></i> dalvimehdi@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> haadkhan@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> jawadkhan@gmail.com </a>
            <!-- <img src="image/worldmap.png" class="map" alt=""> -->
        </div>

        <div class="box">
            <!-- <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#"> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </a>
            <img src="image/worldmap.png" class="map" alt=""> -->
        </div>

    </div>



    <!-- <section class="footer">

        <div class="box-container" style="margin-left: 25%;">

            <div class="box">
                <h3>extra links</h3>
                <a href="#"> <i class="fas fa-arrow-right"></i> account info </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> ordered items </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> privacy policy </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> payment method </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> our serivces </a>
            </div>
    
            <div class="box">
                <h3>contact info</h3>
                <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
                <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
                <a href="#"> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </a>
                <img src="image/worldmap.png" class="map" alt="">
            </div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15243983.007440727!2d81.914063!3d21.125498!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce40ffcfcacd%3A0x5d71ff22760f8e77!2sM.H.%20Saboo%20Siddik%20College%20of%20Engineering!5e0!3m2!1sen!2sin!4v1677842339660!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div> 

        </div> -->

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="credit"> Copyright | All Rights Reserved!
        <i class="fa fa-copyright"></i>
    </div>
</section>

<!-- footer section ends -->

<!-- loader  -->

<div class="loader-container">
    <img src="image/loader-img.gif" alt="">
</div>
















<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>

</html>