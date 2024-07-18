<?php
include('models/VoucherModel.php');
class VoucherController extends Controller
{
    use VoucherModel;
    public function index()
    {
        //quy dinh so ban ghi mot trang
        $recordPerPage = 20;
        //tinh so trang
        //ham ceil la ham lay tran. VD: ceil(2.1) = 3
        $numPage = ceil($this->modelTotal() / $recordPerPage);
        //lay danh sach cac ban ghi co phan trang
        $data = $this->modelRead($recordPerPage);
        //goi view, truyen du lieu ra view
        $this->loadView('VoucherView.php', ["data" => $data, "numPage" => $numPage]);
    }
    public function create()
    {
        $action = "index.php?controller=voucher&action=createPost";
        $this->loadView('CreateVoucherView.php', ['action' => $action]);
    }
    public function createPost()
    {
        $this->createVoucher();
        header("location:index.php?controller=voucher");
    }
    public function update()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $conn = Connection::getInstance();
        $query = $conn->query("select * from vouchers where id=$id");
        $result = $query->fetchAll();
        $action = "index.php?controller=voucher&action=updateVoucher&id=$id";
        $this->loadView('EditVoucher.php', ['action' => $action, 'result' => $result]);
    }
    public function updateVoucher()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $this->updatePost($id);
        header("location:index.php?controller=voucher");
    }
    public function delete()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $conn = Connection::getInstance();
        $conn->query("delete from vouchers where id=$id");
        header("location:index.php?controller=voucher");
    }
}
