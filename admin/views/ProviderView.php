<?php
$this->layoutPath = 'Layout.php';
?>
<div class="col-md-12">
    <h2 style="text-align: center"> Quản lý nhà cung cấp</h2>
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=provider&action=create" class="btn btn-primary">Thêm nhà cung cấp</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách nhà cung cấp</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover table-responsive text-center">
                <tr>

                    <th>Tên nhà cung cấp</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Local</th>
                    <th>Chức năng</th>
                </tr>
                <?php foreach ($data as $row) : ?>
                    <tr>
                        <td><?php echo $row->name ?></td>
                        <td> <?php echo $row->phone ?></td>

                        <td><?php echo $row->email ?></td>

                        <td><?php echo $row->local ?></td>

                        <td style="text-align:center;">
                            <a href="index.php?controller=provider&action=update&id=<?php echo $row->id ?>">
                                <img style="width: 18px" src="../assets/frontend/images/edit.png" alt="update">
                            </a>&nbsp;
                            <a href="index.php?controller=provider&action=delete&id=<?php echo $row->id ?>" onclick="return window.confirm('Are you sure?');">
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
                    <li class="page-item"><a href="index.php?controller=provider&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>