<?php
//load LayoutTrangChu.php
$this->layoutPath = "LayoutTrangTrong.php";
?>
<div class="template-cart">
  <?php if (isset($success)) : ?>
    <script>
      $.toast({
        heading: 'Thông báo',
        text: 'Sử dụng voucher thành công',
        hideAfter: false,
        icon: 'success'
      })
    </script>
  <?php endif ?>
  <?php if (isset($error)) : ?>
    <script>
      $.toast({
        heading: 'Thông báo',
        text: 'Sử dụng voucher không thành công',
        hideAfter: false,
        icon: 'error'
      })
    </script>
  <?php endif ?>

  <form action="index.php?controller=cart&action=update" method="post">
    <div class="table-responsive">
      <table class="table table-cart" style="font-size:15px">
        <thead>
          <tr>
            <th class="image">Ảnh sản phẩm</th>
            <th class="name">Tên sản phẩm</th>
            <th class="price">Giá bán lẻ</th>
            <th class="quantity">Số lượng</th>
            <th class="price">Thành tiền</th>
            <th>Xóa</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($_SESSION["cart"] as $product) : ?>
            <tr>
              <td><img src="assets/upload/products/<?php echo $product['photo']; ?>" class="img-responsive" /></td>
              <td><a style="text-decoration:none;color:black" href="index.php?controller=products&action=detail&id=<?php echo $product['id']; ?>"><?php echo $product['name']; ?></a></td>
              <td> <?php echo number_format($product['price']); ?>₫ </td>
              <td><input type="number" id="quantity" min="1" class="input-control" value="<?php echo $product['number']; ?>" name="product_<?php echo $product['id']; ?>" required="Không thể để trống"></td>
              <td>
                <p><b><?php echo number_format($product['number'] * $product['price']); ?>₫</b></p>
              </td>
              <td><a href="index.php?controller=cart&action=delete&id=<?php echo $product['id']; ?>" data-id="2479395"><i class="fa fa-trash"></i></a></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
        <?php if ($this->cartNumber() > 0) : ?>
          <tfoot>
            <tr>
              <td colspan="6"><a href="index.php?controller=cart&action=destroy" class="button pull-left">Xóa toàn bộ</a> <a href="index.php" class="button pull-right black">Tiếp tục mua hàng</a>
                <input type="submit" class="button pull-right" value="Cập nhật">
              </td>
            </tr>
          </tfoot>
        <?php endif; ?>
      </table>
    </div>
  </form>
  <?php if ($_SESSION['cart']) { ?>
    <div class="text-end">
      <button class="btn btn-danger" style="font-size:15px" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">Dùng Voucher</button>

      <div class="offcanvas offcanvas-end" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Danh sách voucher</h5>
          <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <?php foreach ($data as $row) : ?>
            <div class="voucher d-flex align-items-center p-2 mb-2" style="width:100%;border:1px solid red;height:170px;border-radius:8px;background-color:#FFCCCC">
              <div id="icon" style="font-size:25px"><i class="fa-solid fa-ticket fa-2xl" style="color:#e00b0b"></i></div>
              <div id="voucherDetail" class="ms-4">
                <form method="post" action="index.php?controller=cart&action=useVoucher&voucher=<?php echo $row->idVoucher ?>">
                  <input hidden value="<?php echo $this->getDiscountCountCon($row->idVoucher) ?>" name="CountCon">
                  <input hidden name="OrderCon" value="<?php echo $this->getDiscountOrderCon($row->idVoucher) ?>">
                  <input hidden name="Discount" value="<?php echo $this->getDiscountVoucher($row->idVoucher) ?>">
                  <b>
                    <p class="text-danger text-start" style="font-size:20px"><?php echo $this->getMa($row->idVoucher) ?></p>
                  </b>
                  <p class="text-danger text-start" style="font-size:20px"> Giảm <?php echo $this->getDiscountVoucher($row->idVoucher) ?>%</p>
                  <?php if ($this->getDiscountOrderCon($row->idVoucher) != '') : ?>
                    <p style="font-size:20px" class="text-danger text-start">Cho đơn hàng từ <?php echo $this->getDiscountOrderCon($row->idVoucher) ?>đ</p>
                  <?php endif ?>
                  <?php if ($this->getDiscountCountCon($row->idVoucher) != '') : ?>
                    <p style="font-size:20px" class="text-danger text-start">Áp dụng khi mua <?php echo $this->getDiscountCountCon($row->idVoucher) ?> trở lên</p>
                  <?php endif ?>
                  <button type="submit" style="font-size:16px" class="btn btn-danger">Sử dụng</button>
                  <span class="ms-3 text-danger" style="">x<?php echo $row->soluong ?></span>
                </form>
              </div>

            </div>
          <?php endforeach ?>
        </div>
      </div>
    </div>
  <?php } ?>
  <?php if ($this->cartNumber() > 0) : ?>

    <div class="total-cart">

      <form method="post" action="index.php?controller=cart&action=checkout">
        <p>Tổng tiền
          <?php echo number_format($this->cartTotal()); ?>₫ <br></p>
        <input hidden value="<?php echo $this->cartTotal() ?>" name="totalWithoutVoucher">
        <?php if (isset($result)) : ?>
          <p>Thành tiền : <?php echo number_format($result) ?>đ</p>
          <input hidden value="<?php echo $result ?>" name="totalWithVoucher">
          <input hidden value="<?php echo $idVoucher ?>" name="voucherId">
        <?php endif ?>
        <button type="submit" style="font-size: 17px" class="btn btn-success">Thanh toán</button>
        <!-- <a href="javascript:;" class="button black checkout">Thanh toán</a> -->
        <!-- <a href="index.php?controller=cart&action=checkout"  ></a> -->
        <!-- <div style="text-align: center;" class="total-cart">Hình thức thanh toán online</div>

              <?php
              //$vnd_to_usd = round($this->cartTotal()/23000,2);
              ?>
              <div style="width: 300px;" id="paypal-payment-button"></div>
                <input type="hidden" id="vnd_to_usd"
                value="<?php //echo $vnd_to_usd; 
                        ?>">
            </div> -->
      <?php endif; ?>
      </form>

    </div>

    <!-- <script src="https://www.paypal.com/sdk/js?client-id=AV3J8WChJOGZV608ovPdEx0z0sjSyODS902qgqZiyiK4Ss9vRGBVEBqyLs_DXi3koa59yhawlpEIyygI">
</script>
<script>
  var usd = document.getElementById("vnd_to_usd").value;
  paypal.Buttons({
  style: {
      color: 'blue',
      shape: 'pill'
  },
  createOrder:function(data, actions){
    return actions.order.create({
      purchase_units:[{
        amount:{
          value:`${usd}`
        }
      }]
    });
  },
  onApprove:function (data, actions){
    return actions.order.capture().then(function(details){
      console.log(details);
      alert("Xử lý thanh toán thành công, bấm THANH TOÁN để hoàn tất");
    })
    destroy();
  },
  onCancel:function(data){
    alert("Xử lý thanh toán thất bại")
  }
}).render('#paypal-payment-button');
</script> -->

    <script>
      $('.checkout').click(function() {
        if (confirm('Xác nhận thanh toán')) {
          window.location.href = 'index.php?controller=cart&action=checkout';
        }
      })
    </script>