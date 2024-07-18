<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Tạo mới chương trình khuyến mại</h2>
    <div class="panel panel-primary">
        <div class="panel-heading">Tạo mới</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $action ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tên chương trình khuyến mại</div>
                    <div class="col-md-10">
                        <input type="text" name="nameDiscount" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mức giảm</div>
                    <div class="col-md-10">
                        <input type="text" name="discount" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Áp dụng cho</div>
                    <div class="col-md-10">
                        <select class="form-control" style="width: 250px;" name="category_id">
                            <?php $categories = $this->modelListCategories(); ?>
                            <?php foreach ($categories as $rows) : ?>
                                <option <?php if (isset($record->category_id) && $record->category_id == $rows->id) : ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?></option>
                                <?php $categoriesSub = $this->modelListCategoriesSub($rows->id); ?>
                                <?php foreach ($categoriesSub as $rowsSub) : ?>
                                    <option <?php if (isset($record->category_id) && $record->category_id == $rowsSub->id) : ?> selected <?php endif; ?> value="<?php echo $rowsSub->id; ?>">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $rowsSub->name; ?></option>
                                <?php endforeach; ?>
                            <?php endforeach; ?>
                        </select>
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