<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Tạo mã giảm giá</h2>
    <div class="panel panel-primary">
        <div class="panel-heading">Thêm mã giảm giá</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $action ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Nhập mã giảm giá</div>
                    <div class="col-md-10">
                        <input type="text" name="ma" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số lượng mã</div>
                    <div class="col-md-10">
                        <input type="text" name="count" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Phần trăm giảm</div>
                    <div class="col-md-10">
                        <input type="text" name="discount" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
               
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Điều kiện áp dụng với đơn hàng có giá trị lớn hơn</div>
                    <div class="col-md-10">
                        <input type="text" name="OrderCon" class="form-control">
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Điều kiện áp dụng với số lượng</div>
                    <div class="col-md-10">
                        <input type="text" name="CountCon" class="form-control">
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mô tả</div>
                    <div class="col-md-10">
                        <textarea name="content" id="content">
                        <?php echo isset($record->content) ? $record->content : ""; ?>
                    </textarea>
                        <script type="text/javascript">
                            CKEDITOR.replace("content");
                        </script>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Thời gian bắt đầu</div>
                    <div class="col-md-10">
                        <input type="date" name="timestart" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Thời gian kết thúc</div>
                    <div class="col-md-10">
                        <input type="date" name="timeend" class="form-control" required>
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