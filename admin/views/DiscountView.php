<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Chương trình khuyến mại</h2>
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=discount&action=create" class="btn btn-primary">Tạo mới chương trình khuyến mại</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách chương trình khuyến mại</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover table-responsive text-center">
                <tr>

                    <th>Tên chương trình</th>
                    <th>Giảm giá</th>
                    <th>Loại sản phẩm</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Trạng thái</th>
                    <th>Chức năng</th>
                </tr>
                <?php foreach ($data as $row) : ?>
                    <tr>

                        <td><?php echo $row->name ?></td>
                        <td> <?php echo $row->discount ?>%</td>

                        <td><?php echo $this->getNameCat($row->idCat) ?></td>

                        <td><?php echo $row->dateStart ?></td>
                        <td><?php echo $row->dateEnd ?></td>
                        <?php $now = new DateTime();
                        $timeend = new DateTime($row->dateEnd);
                        $timestart = new DateTime($row->dateStart);
                        if ($now > $timeend) {
                        ?>
                            <td>Chương trình đã kết thúc</td>
                        <?php } elseif ($now < $timestart) { ?>
                            <td>Chương trình chưa bắt đầu</td>
                        <?php } else { ?>
                            <td>Chương trình đang diễn ra</td>
                        <?php } ?>

                        <td style="text-align:center;">
                            <a href="index.php?controller=discount&action=update&id=<?php echo $row->id ?>">
                                <img style="width: 18px" src="../assets/frontend/images/edit.png" alt="update">
                            </a>&nbsp;
                            <a href="index.php?controller=discount&action=delete&id=<?php echo $row->id ?>" onclick="return window.confirm('Are you sure?');">
                                <img style="width: 18px" src="../assets/frontend/images/delete.png" alt="delete">
                            </a>
                        </td>

                    </tr>
                <?php endforeach ?>
            </table>
            <style type="text/css">
                .pagination {
                    padding: 0px;
                    margin: 0px;
                }
            </style>
            <ul class="pagination">
                <li class="page-item disabled"><a href="#" class="page-link">Trang</a></li>
                <?php for ($i = 1; $i <= $numPage; $i++) : ?>
                    <li class="page-item"><a href="index.php?controller=discount&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>