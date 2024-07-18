<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Thêm mới nhà cung cấp</h2>
    <div class="panel panel-primary">
        <div class="panel-heading">Tạo mới</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $action ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tên nhà cung cấp</div>
                    <div class="col-md-10">
                        <input type="text" name="name" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số điện thoại</div>
                    <div class="col-md-10">
                        <input type="text" name="phone" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Email</div>
                    <div class="col-md-10">
                        <input type="email" name="email" class="form-control" required>

                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Địa chỉ</div>
                    <div class="col-md-10">
                        <input type="text" name="local" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="submit" value="Process" class="btn btn-primary">
                    </div>
                </div>
                <!-- end rows -->
            </form>
        </div>
    </div>
</div>