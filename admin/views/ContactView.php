<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center">Danh sách các liên hệ </h2>
    <div style="margin-bottom:5px;">
        
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách các liên hệ</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover table-responsive text-center">
                <tr>

                    <th>Tên khách hàng</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Ngày tạo</th>
                    <th>Nội dung</th>
                    <th>Trạng thái</th>
                    <th>Chức năng</th>
                </tr>
                <?php foreach ($data as $row) : ?>
                    <tr>

                        <td><?php echo $row->name ?></td>
                        <td> <?php echo $row->phone ?></td>

                        <td><?php echo $row->email ?></td>

                        <td><?php echo $row->create_at ?></td>
                        <td><?php echo $row->description ?></td>

                        <?php if ($row->status > 0) { ?>
                            <td>
                                <p style="color:green">Đã xử lý</p>
                            </td>
                        <?php } else { ?>
                            <td>
                                <p style="color:red">Chưa xử lý</p>
                            </td>
                        <?php } ?>

                        <td style="text-align:center;">
                            <a href="index.php?controller=contact&action=update&id=<?php echo $row->id ?>">
                                <button> <i class="fa-solid fa-check" style="color: #0de71c;"></i></button>
                            </a>&nbsp;

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
                    <li class="page-item"><a href="index.php?controller=contact&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>