<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Cập nhật mã giảm giá</h2>
    <div class="panel panel-primary">
        <div class="panel-heading">Cập nhật</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $action ?>">
                <!-- rows -->
                <?php foreach ($result as $row) : ?>
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Mã giảm giá</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->ma ?>" name="ma" class="form-control" required>
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Số lượng mã</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->soluong ?>" name="count" class="form-control" required>
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Phần trăm giảm</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->discount ?>" name="discount" class="form-control" required>
                        </div>
                    </div>
                    <!-- end rows -->
                   
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Điều kiện áp dụng với đơn hàng</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->dk_hoadon ?>" name="OrderCon" class="form-control">
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Điều kiện áp dụng với số lượng</div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $row->dk_soluong ?>" name="CountCon" class="form-control">
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Mô tả</div>
                        <div class="col-md-10">
                            <textarea name="content" id="content" value="<?php echo $row->description ?>">
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
                            <input type="date" value="<?php echo $row->timeStart ?>" name="timestart" class="form-control" required>
                        </div>
                    </div>
                    <!-- end rows -->
                    <!-- rows -->
                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-2">Thời gian kết thúc</div>
                        <div class="col-md-10">
                            <input type="date" value="<?php echo $row->timeEnd ?>" name="timeend" class="form-control" required>
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