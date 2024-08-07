<?php
//load LayoutTrangChu.php
$this->layoutPath = "LayoutTrangChu.php";
?>
<style>
  /* Slick carousel homeView */

  .carouselVoucher .slick-prev:before,
  .carouselVoucher .slick-next:before {
    color: red !important;
  }
</style>
<script>
  $(document).ready(function() {
    $('.carouselVoucher').slick({
      slidesToShow: 3,
      dots: true,
      arrows: true,
      cssEase: 'linear',
      accessibility: true,
      autoplay: true,
    });
  });
</script>
<div class="wrapper mt-4">
  <h2 class="mb-2">Vouchers<h2>
      <div class="carouselVoucher">
        <?php foreach ($data as $row) : ?>
          <div class="voucher d-flex align-items-center p-2 me-2" style="width:130px;border:1px solid red;height:200px;font-size:25px;border-radius:8px;background-color:#FFCCCC">
            <div id="icon"><i class="fa-solid fa-ticket fa-2xl" style="color: #e00b0b;"></i></div>
            <?php if ($this->checkVoucher($row->id) > 0) { ?>
              <div id="voucherDetail" class="ms-4">
                <p class="text-danger"> <?php echo $row->ma ?></p>
                <b>
                  <p class="text-danger"> Giảm <?php echo $row->discount ?>%</p>
                </b>
                <p class="text-danger">Cho đơn hàng từ <?php echo number_format($row->dk_hoadon) ?>đ</p>
                <i style="font-size:12px">Thời gian: <?php echo $row->timeStart ?> - <?php echo $row->timeEnd ?></i>
                <button class="btn btn-danger mb-2 float-end">Đã lưu</button>
              </div>
            <?php } else { ?>
              <div id="voucherDetail" class="ms-4">
                <form method="post" action="index.php?action=voucher">
                  <input hidden value="<?php echo $row->id ?>" name="idVoucher">
                  <input hidden name="idCus" value="<?php echo isset($_SESSION['customer_id']) ? $_SESSION['customer_id'] : 0  ?>">
                  <p class="text-danger"> <?php echo $row->ma ?></p>
                  <b>
                    <p class="text-danger"> Giảm <?php echo $row->discount ?>%</p>
                  </b>
                  <p class="text-danger">Cho đơn hàng từ <?php echo number_format($row->dk_hoadon) ?>đ</p>
                  <i style="font-size:12px">Thời gian: <?php echo $row->timeStart ?> - <?php echo $row->timeEnd ?></i>
                  <button type="submit" class="btn btn-danger mb-2 float-end">Lưu</button>

                </form>
              </div>
            <?php } ?>
          </div>
        <?php endforeach ?>
      </div>
</div>
<div class="special-collection">
  <div class="tabs-container">
    <div class="row" style="margin-top:10px;">
      <div class="col-lg-10">
        <h2>SẢN PHẨM HOT</h2>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <div class="tabs-content row">
    <div id="content-tabb1" class="content-tab content-tab-proindex" style="display:none">
      <div class="clearfix">
        <?php
        $products = $this->modelHotProducts();
        $now = date("Y-m-d");
        ?>
        <?php foreach ($products as $rows) : ?>
          <?php
          $createdAt = date('Y-m-d', strtotime($rows->created_at));
          $dateDiff = strtotime($now) - strtotime($createdAt);
          $textYeuThich = 'Yêu thích';
          if ($dateDiff < 259200) {
            $textYeuThich = 'Sản phẩm mới';
          }
          ?>
          <!-- box product -->
          <div class="col-xs-6 col-md-2 col-sm-6 " style="position: relative;">
            <div style="position: absolute; width: 30px; line-height: 30px; border-radius: 30px; background: red; color:white; text-align: center;"><?php echo $rows->discount; ?>%</div>
            <div style="position: absolute; width: 70px; line-height: 25px; border-radius: 20px; background: red; color:white; text-align: center; right: 10px;top:60px;"><a href="index.php?controller=wishlist&action=create&id=<?php echo $rows->id; ?>" style="color:white;"><?php echo $textYeuThich; ?></a></div>
            <div class="product-grid" id="product-1168979" style="height: 350px; overflow: hidden;border:none">
              <div class="image"> <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" class="img-responsive"></a> </div>
              <div class="info">
                <h3 class="name"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
                <p class="price-box"> <span class="special-price"> <span style="text-decoration:line-through"> <?php echo number_format($rows->price); ?></span> ₫ </span> </p>
                <p class="price-box"> <span class="special-price"> <span class="price product-priceg "> <?php echo number_format($rows->price - ($rows->price * $rows->discount) / 100); ?> </span>₫ </span> </p>
                <p class="price-box"> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><img src="assets/frontend/images/star.jpg"></a> </p>
                <div class="action-btn">
                  <form>
                    <a style="background:black;color:white" href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" class="button">Thêm vào giỏ hàng</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!-- end box product -->
        <?php endforeach; ?>

      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-xs-12 col-md-12"> <img src="assets/frontend/100/047/633/themes/517833/assets/banner5.jpg" class="img-thumbnail"> </div>
</div>
<?php
$categories = $this->modelGetCategories();
?>
<?php foreach ($categories as $rowsCategories) : ?>
  <!-- category product -->
  <div class="special-collection">
    <div class="tabs-container">
      <div class="row" style="margin-top:10px;">
        <div class="head-tabs head-tab1 col-lg-11">
          <h2><?php echo $rowsCategories->name; ?></h2>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="tabs-content row">
      <div id="content-taba4" class="content-tab content-tab-proindex">

        <?php
        $products = $this->modelGetProducts($rowsCategories->id);
        ?>
        <?php foreach ($products as $rows) : ?>
          <?php
          $createdAt = date('Y-m-d', strtotime($rows->created_at));
          $dateDiff = strtotime($now) - strtotime($createdAt);
          $textYeuThich = 'Yêu thích';
          if ($dateDiff < 259200) {
            $textYeuThich = 'Sản phẩm mới';
          }
          ?>
          <!-- box product -->
          <div class="col-xs-6 col-md-2 col-sm-6 " style="position: relative;">
            <div style="position: absolute; width: 30px; line-height: 30px; border-radius: 30px; background: red; color:white; text-align: center;"><?php echo $rows->discount; ?>%</div>
            <div style="position: absolute; width: 70px; line-height: 25px; border-radius: 20px; background: red; color:white; text-align: center; right: 10px;top:60px;"><a href="index.php?controller=wishlist&action=create&id=<?php echo $rows->id; ?>" style="color:white;"><?php echo $textYeuThich; ?></a></div>
            <div class="product-grid" id="product-1168979" style="height: 350px; overflow: hidden;border:none">
              <div class="image"> <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" class="img-responsive"></a> </div>
              <div class="info">
                <h3 class="name"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
                <p class="price-box"> <span class="special-price"> <span style="text-decoration:line-through;"> <?php echo number_format($rows->price); ?></span> ₫ </span> </p>
                <p class="price-box"> <span class="special-priceg"> <span class="price product-priceg"> <?php echo number_format($rows->price - ($rows->price * $rows->discount) / 100); ?> </span>₫ </span> </p>
                <p class="price-box"> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><img src="assets/frontend/images/star.jpg"></a> <a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><img src="assets/frontend/images/star.jpg"></a> </p>
                <div class="action-btn">
                  <form>
                    <a style="background:black;color:white" href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" class="button">Thêm vào giỏ hàng</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!-- end box product -->
        <?php endforeach; ?>

      </div>
    </div>
  </div>
  <!-- /category product -->
<?php endforeach; ?>

<!-- adv -->
<div class="widebanner"> <a href="#"><img src="assets/frontend/100/047/633/themes/517833/assets/banner6.webp" alt="#" class="img-responsive"></a> </div>
<!-- end adv -->

<!-- hot news -->
<div class="home-blog">
  <h2 class="title"> <span>Tin tức</span></h2>
  <div class="row">
    <div class="owl-home-blog owl-home-blog-bottompage">
      <?php
      $hotNews = $this->modelGetHotNews();
      ?>
      <?php foreach ($hotNews as $rows) : ?>
        <!-- new item -->
        <div class="item">
          <div class="article"> <a href="index.php?controller=news&action=detail&id=<?php echo $id; ?>" class="image"> <img src="assets/upload/news/<?php echo $rows->photo; ?>" alt="<?php echo $rows->name; ?>" title="<?php echo $rows->name; ?>" class="img-responsive"> </a>
            <div class="info">
              <h3><a class="text3line" href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>" style="font-weight: bold;"><?php echo $rows->name; ?></a></h3>
              <p class="desc"><?php echo $rows->description; ?></p>
            </div>
          </div>
        </div>
        <!-- /news item -->
      <?php endforeach; ?>


    </div>
  </div>
</div>
<!-- /hotnews -->