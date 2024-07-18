<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Danh sách mã giảm giá</h2>
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=voucher&action=create" class="btn btn-primary">Tạo mới mã giảm giá</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách mã giảm giá</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover table-responsive text-center">
                <tr>

                    <th>Mã giảm giá</th>
                    <th>Phần trăm giảm</th>
                    <th>Số lượng</th>
                    <th>Điều kiện</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Tình trạng</th>
                    <th>Chức năng</th>
                </tr>
                <?php foreach ($data as $row) : ?>
                    <tr>

                        <td><?php echo $row->ma ?></td>
                        <td> <?php echo $row->discount ?>%</td>

                        <td><?php echo $row->soluong ?></td>
                        <td>
                            <?php if (is_int($row->dk_hoadon)) { ?>
                                <p>Điều kiện hóa đơn tối thiểu <?php echo number_format($row->dk_hoadon) ?>đ</p>
                            <?php } else { ?>
                                <p> <?php ($row->dk_hoadon) ?></p>
                            <?php } ?>

                            <?php if (($row->dk_soluong) != '') { ?>
                                <p>Điều kiện hóa đơn mua tối thiểu <?php echo ($row->dk_soluong) ?> sản phẩm</p>
                            <?php } else { ?>
                                <p> <?php ($row->dk_soluong) ?></p>
                            <?php } ?>
                        </td>
                        <td><?php echo $row->timeStart ?></td>
                        <td><?php echo $row->timeEnd ?></td>
                        <?php $now = new DateTime();
                        if ($now <= $row->timeEnd) {
                        ?>
                            <td>Voucher đã hết hạn</td>
                        <?php } else { ?>
                            <td>Voucher đang khả dụng</td>
                        <?php } ?>

                        <td style="text-align:center;">
                            <a href="index.php?controller=voucher&action=update&id=<?php echo $row->id ?>">
                                <img style="width: 18px" src="../assets/frontend/images/edit.png" alt="update">
                            </a>&nbsp;
                            <a href="index.php?controller=voucher&action=delete&id=<?php echo $row->id ?>" onclick="return window.confirm('Are you sure?');">
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