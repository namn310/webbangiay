<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Cập nhật thông tin nhà cung cấp</h2>
    <div class="panel panel-primary">
        <div class="panel-heading">Cập nhật</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $action ?>">
                <?php foreach ($result as $row) : ?>
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Tên nhà cung cấp</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->name ?>" name="name" class="form-control" required>
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Số điện thoại</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->phone ?>" name="phone" class="form-control" required>
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Email</div>
                        <div class="col-md-10">
                            <input type="email" value="<?php echo $row->email ?>" name="email" class="form-control" required>

                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Địa chỉ</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->local ?>" name="local" class="form-control" required>
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
                <?php endforeach ?>
            </form>
        </div>
    </div>
</div>