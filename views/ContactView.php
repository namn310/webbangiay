<?php
//load LayoutTrangTrong.php
$this->layoutPath = "LayoutTrangTrong.php";
?>
<div class="template-customer">
  <?php if (isset($success)) : ?>
    <script>
      $.toast({
        heading: 'Thông báo',
        text: 'Cảm ơn bạn đã liên hệ. Chúng tôi sẽ phản hồi lại sớm nhất cho bạn',
        hideAfter: false,
        icon: 'success'
      })
    </script>
  <?php endif ?>
  <?php if (isset($error)) : ?>
    <script>
      $.toast({
        heading: 'Thông báo',
        text: 'Có vấn đề bạn vui lòng thử lại sau',
        hideAfter: false,
        icon: 'error'
      })
    </script>
  <?php endif ?>
  <h1>Liên hệ</h1>
  <i>Nếu có thắc mắc gì bạn có thể cung cấp cho chúng tôi qua form sau</i>
  <div class="align-items-center d-flex justify-content-center mb-4">

    <form style="font-size:15px;width:50%;border:1px solid black;border-radius:5px" class="mt-2 p-4" method="post" action="index.php?controller=contact&action=create">
      <h2 class="text-center">Contact form</h2>
      <div>
        <label class="form-label" for="name">Họ và tên</label>
        <input style="font-size:15px" name="name" id="name" placeholder="Nhập họ và tên của bạn" type="text" class="form-control" required>
      </div>
      <div>
        <label class="form-label" for="phone">Số điện thoại</label>
        <input style="font-size:15px" name="phone" id="phone" placeholder="Số điện thoại" type="phone" class="form-control" required>
      </div>
      <div>
        <label class="form-label" for="email">Email</label>
        <input style="font-size:15px" name="email" id="email" placeholder="Email" type="email" class="form-control">
      </div>
      <div>
        <label class="form-label" for="name">Nội dung</label>
        <textarea style="font-size:15px" name="des" placeholder="Nhập vấn đề của bạn" class="form-control" style="width:100%;resize:none;min-height:100px"></textarea>
      </div>
      <div class="text-center">
        <button style="font-size:17px" class="btn btn-primary mt-3" type="submit">Gửi</button>
      </div>
    </form>
  </div>
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.00278315072!2d105.7699068245006!3d21.032574641205347!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b6ceb55e4d%3A0xe8ad1b082e1da4bb!2zMTcgTmcuIDY2IFAuIE5ndXnhu4VuIEhvw6BuZywgQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1657290849831!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>