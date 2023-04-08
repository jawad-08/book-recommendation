<?php
include("header.php");

$getcategory = mysqli_query($conn, "SELECT * from category") or die(mysqli_error($conn));

?>

<section class="featured" id="featured">
  <h1 class="heading"><span>CHOOSE YOUR INTEREST</span></h1>
  </form action="" method="POST">
  <div class="genreParent">

    <?php
    $ctr = 0;
    while ($fetcategory = mysqli_fetch_array($getcategory)) {
      if ($ctr % 5 == 0) {
        echo "</div>";
        echo '<div class="genreParent">';
      }
      $ctr++;

      ?>
      <div class="genreContainer">
        <div class="image">
          <img src="<?= $fetcategory['image'] ?>" alt="">
        </div>
        <div class="label">
          <h3>
            <input type="" ><?= $fetcategory['name'] ?>
          </h3>
        </div>
      </div>

      <?php
    }
    ?>
  </div>
  <div style="text-align:center">
  <input type="submit" value="Next" class="btn text-center" name="submit">
  </div>
  </form>

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

  <div class="credit">
    Copyright | All Rights Reserved!
    <i class="fa fa-copyright"></i>
  </div>
</section>

<!-- footer section ends -->

<!-- loader  -->

<div class="loader-container">
  <img src="image/loader-img.gif" alt="" />
</div>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
</body>

</html>