<!doctype html>
<!--[if !IE]><!-->
<html lang="vi">
<!--<![endif]-->

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta http-equiv="content-language" content="vi" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="robots" content="noodp,index,follow" />
  <meta name='revisit-after' content='1 days' />
  <meta name="keywords" content="">
  <title>Media Mart</title>
  <link rel="shortcut icon" href="assets/frontend/100/047/633/themes/517833/assets/favicon221b.png" type="image/x-icon" />
  <link href='assets/frontend/100/047/633/themes/517833/assets/font-awesome.min221b.css?1481775169361' rel='stylesheet' type='text/css' />
  <link href='assets/frontend/100/047/633/themes/517833/assets/bootstrap.min221b.css?1481775169361' rel='stylesheet' type='text/css' />
  <link href='assets/frontend/100/047/633/themes/517833/assets/owl.carousel221b.css?1481775169361' rel='stylesheet' type='text/css' />
  <link href='assets/frontend/100/047/633/themes/517833/assets/responsive221b.css?1481775169361' rel='stylesheet' type='text/css' />
  <link href='assets/frontend/100/047/633/themes/517833/assets/styles.scss221b.css?1481775169361' rel='stylesheet' type='text/css' />
  <script src='assets/frontend/100/047/633/themes/517833/assets/jquery.min221b.js?1481775169361' type='text/javascript'></script>
  <script src='assets/frontend/100/047/633/themes/517833/assets/bootstrap.min221b.js?1481775169361' type='text/javascript'></script>
  <script src='assets/frontend/assets/themes_support/api.jquerya87f.js?4' type='text/javascript'></script>
  <link href='assets/frontend/100/047/633/themes/517833/assets/bw-statistics-style221b.css?1481775169361' rel='stylesheet' type='text/css' />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

  <script src="
    https://cdn.jsdelivr.net/npm/jquery-toast-plugin@1.3.2/dist/jquery.toast.min.js
    "></script>
  <link href="
    https://cdn.jsdelivr.net/npm/jquery-toast-plugin@1.3.2/dist/jquery.toast.min.css
    " rel="stylesheet">

</head>

<body class="index">
  <!-- header -->
  <?php
  //load MVC bang tay -> load file controller
  include "controllers/HeaderController.php";
  $obj = new HeaderController();
  $obj->index();
  ?>
  <!-- end header -->
  <div class="content">
    <div class="container">
      <h1 style="display:none;">Media Mart</h1>
      <div class="row">
        <div class="col-xs-12 col-md-3">
          <!-- end support -->
          <div class="online_support block">
            <div class="new_title">
              <h2 style="background-color: black;text-align:center">Hỗ trợ trực tuyến</h2>
            </div>
            <div class="block-content">
              <div class="sp_1">
                <p>Tư vấn bán hàng 1</p>
                <p>Mr. user: 0987654321</p>
              </div>
              <div class="sp_mail">
                <p>Email liên hệ</p>
                <p>User@mail.com</p>
              </div>
            </div>
          </div>
          <!-- end support online -->
          <!-- box search -->
          <div class="panel panel-default" style="margin-top:15px;">
            <div class="panel-heading"> Tìm theo mức giá </div>
            <div class="panel-body">
              <ul class="list-group" style="border:0px;">
                <li class="list-group-item" style="border:0px;">Giá từ &nbsp;&nbsp;
                  <input type="number" min="0" value="0" id="fromPrice" class="form-control" />
                </li>
                <li class="list-group-item" style="border:0px;">Đến &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="number" min="0" value="0" id="toPrice" class="form-control" />
                </li>
                <li class="list-group-item" style="border:0px; text-align:center">
                  <input style="background-color: black;color:white" type="button" class="btn btn-warning" value="Tìm mức giá" onclick="location.href = 'index.php?controller=search&fromPrice=' + document.getElementById('fromPrice').value + '&toPrice=' + document.getElementById('toPrice').value;" />
                </li>
              </ul>
            </div>
          </div>
          <!-- end box search -->

          <!-- hot news -->
          <div class="home-blog">
            <h2 class="title"> <span>Tin tức</span></h2>
            <div class="row">
              <div class="owl-home-blog owl-home-blog-sidebar">
                <!-- list hot news -->
                <div class="item">
                  <div class="article"> <a href="index.php?controller=news_detail&id=20" class="image"> <img src="assets/upload/news/1714546232_h5-1-1587114514-3059-1587115493.jpg" alt="Mua Macbook và Macbook Air Plus chính hãng ở đâu?" title="Mua Macbook và Macbook Air Plus chính hãng ở đâu?" class="img-responsive"> </a>
                    <div class="info">
                      <h3><a href="index.php?controller=news_detail&id=20">Mua giày chính hãng ở đâu?</a></h3>
                      <p class="desc">
                      <p>Hiện nay có rất nhiều các cửa hàng bán giày khiến khách hàng khó khăn trong việc lựa chọn các cơ sở uy tín để mua hàng...</p>
                      </p>
                    </div>
                  </div>
                </div>
                <!-- end list hot news -->
                <!-- list hot news -->
                <div class="article"> <a href="index.php?controller=news_detail&id=20" class="image"> <img src="assets/upload/news/1714546085_giayphanhuysinhhccopy-16608771-6857-8152-1660877687.jpg" alt="Mua Macbook và Macbook Air Plus chính hãng ở đâu?" title="Mua Macbook và Macbook Air Plus chính hãng ở đâu?" class="img-responsive"> </a>
                  <div class="info">
                    <h3><a href="index.php?controller=news_detail&id=20">Trung Quốc phát triển giày sinh học</a></h3>
                    <p class="desc">
                    <p>Gần đây Trung Quốc đã đưa ra mẫu giày sinh học được làm từ các nguyên liệu gần gũi và thân thiện với thiên nhiên cũng như dễ dàng phân hủy...</p>
                    </p>
                  </div>
                </div>
                <!-- end list hot news -->
                <!-- list hot news -->
                <div class="item">
                  <div class="article"> <a href="index.php?controller=news_detail&id=17" class="image"> <img src="assets/upload/news/1714546154_giay1-1648350252-1648350286-9650-1648351426.jpg" alt="Mua iPhone 6s và iPhone 6s Plus chính hãng ở đâu?" title="Mua iPhone 6s và iPhone 6s Plus chính hãng ở đâu?" class="img-responsive"> </a>
                    <div class="info">
                      <h3><a href="index.php?controller=news_detail&id=17">Các mẫu giày trẻ em hot </a></h3>
                      <p class="desc">
                      <p>Hiện nay có rất nhiều mẫu giày trẻ em hot phù hợp với mọi lựa tuổi với kiểu dáng đa dạng giúp các bậc phụ huynh thoải mái lựa chọn</p>
                      </p>
                    </div>
                  </div>
                </div>
                <!-- end list hot news -->
                <!-- list hot news -->

                <!-- end list hot news -->
                <!-- list hot news -->

                <!-- end list hot news -->
              </div>
            </div>
          </div>
          <!-- end hot news -->
          <!-- adv -->

          <!-- end adv -->

        </div>
        <div class="col-xs-12 col-md-9">
          <!-- main -->

          <?php echo $this->view; ?>

          <!-- end main -->
        </div>
      </div>
      <!-- adv -->
      <div class="widebanner"> <a href="#"><img src="./assets/frontend/100/047/633/themes/517833/assets/banner4.jpg" alt="" class="img-responsive"></a> </div>
      <!-- end adv -->

    </div>
  </div>

  <footer id="footer">
    <div class="top-footer">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-3">
            <h3 style="color:black;font-weight:bold">THÔNG TIN MEDIAMART</h3>
            <ul class="list-unstyled">
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/he-thong-sieu-thi">Hệ thống 350 Siêu thị (8:00-21:30)</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/thong-tin-chung/gioi-thieu-cong-ty">Giới thiệu công ty</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/tuyen-dung">Tuyển dụng</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/chinh-sach-chung/quy-dinh-thanh-toan">Phương thức thanh toán</a></li>
            </ul>
          </div>
          <div class="col-xs-12 col-sm-3">
            <h3 style="color:black;font-weight:bold">Hỗ trợ khách hàng</h3>
            <ul class="list-unstyled">
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/ho-tro-mua-hang/huong-dan-mua-hang-online">Hướng dẫn mua hàng Online</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/uu-dai-tra-gop">Mua hàng trả góp</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/chinh-sach-chung/chinh-sach-doi-tra-hang">Chính sách bảo hành, đổi trả</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/chinh-sach-chung/chinh-sach-giao-nhan">Giao hàng và lắp đặt</a></li>
              <li><a style="text-decoration:none;color:black" href="https://mediamart.vn/chinh-sach-chung/quy-dinh-bao-mat">Chính sách bảo mật TT cá nhân</a></li>
              <li><a style="text-decoration:none;color:black" href="https://tracuuhoadon.mediamart.com.vn/">In hóa đơn điện tử</a></li>
            </ul>
          </div>
          <div class="col-xs-12 col-sm-3">
            <h3 style="color:black;font-weight:bold">Tổng đài gọi hỗ trợ</h3>
            <ul class="list-unstyled">
              <li><a style="text-decoration:none;color:black" href="tel:19006788">Bán hàng: 1900 6788</a></li>
              <li><a style="text-decoration:none;color:black" href="tel:19006743">Bảo hành: 1900 6743</a></li>
              <li><a style="text-decoration:none;color:black" href="tel:19006741">Khiếu nại: 1900 6741</a></li>
            </ul>
          </div>
          <div class="col-xs-12 col-sm-3">
            <h3 style="color:black;font-weight:bold">Theo dõi MediaMart trên</h3>
            <ul class="list-unstyled">
              <li>
                <a style="text-decoration:none;color:black" style="margin-left: 10px" href="https://www.facebook.com/DienmayMediaMart" title="MediaMart Facebook Fanpage">
                  <img src="assets/frontend/images/fb.png" alt="MediaMart Facebook Fanpage">
                </a>
                <a style="text-decoration:none;color:black" style="margin-left: 10px" href="https://www.youtube.com/c/CongtyMediamart" title="MediaMart Youtube Channel">
                  <img src="assets/frontend/images/yt.png" alt="MediaMart Youtube Channel">
                </a>
                <a style="text-decoration:none;color:black" style="margin-left: 10px" href="https://www.tiktok.com/@mediamart.official" title="MediaMart Tiktok Channel">
                  <img src="assets/frontend/images/tt.png" alt="MediaMart Tiktok Channel">
                </a>
              </li>
              <h3 style="margin-top: 15px;color:black;font-weight:bold">Theo dõi MediaMart trên</h3>
              <li>
                <a style="text-decoration:none;color:black" href="https://apps.apple.com/vn/app/mediamartvn/id1572630752" title="MediaMart iOS App">
                  <img style="witdh: 45%" src="assets/frontend/images/ios.png" alt="MediaMart iOS App">
                </a>
                <a style="text-decoration:none;color:black" href="#" title="MediaMart Android App">
                  <img style="witdh: 45%" src="assets/frontend/images/chplay.png" alt="MediaMart Android App">
                </a>
              </li>
            </ul>

          </div>
        </div>
        <div class="payments-method"> <img src="assets/frontend/100/047/633/themes/517833/assets/payments-method221b.png?1481775169361" alt="Phương thức thanh toán" title="Phương thức thanh toán"> </div>
      </div>
    </div>
    <div class="bottom-footer">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-5"> © Bản quyền User</div>
          <div class="col-xs-12 col-sm-7">
            <ul class="list-unstyled">
              <li><a style="text-decoration:none;color:black" href="#">Trang chủ</a></li>
              <li><a style="text-decoration:none;color:black" href="#">Giới thiệu</a></li>
              <li><a style="text-decoration:none;color:black" href="#">Tin tức</a></li>
              <li><a style="text-decoration:none;color:black" href="#">Liên hệ</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <script src='assets/frontend/100/047/633/themes/517833/assets/owl.carousel.min221b.js?1481775169361' type='text/javascript'></script>
  <script src='assets/frontend/100/047/633/themes/517833/assets/responsive-menu221b.js?1481775169361' type='text/javascript'></script>
  <script src='assets/frontend/100/047/633/themes/517833/assets/elevate-zoom221b.js?1481775169361' type='text/javascript'></script>
  <script src='assets/frontend/100/047/633/themes/517833/assets/main221b.js?1481775169361' type='text/javascript'></script>
  <script src='assets/frontend/100/047/633/themes/517833/assets/ajax-cart221b.js?1481775169361' type='text/javascript'></script>
</body>

</html>