<?php
include('models/ContactModel.php');
class ContactController extends Controller
{
    use ContactModel;
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
        $this->loadView('ContactView.php', ["data" => $data, "numPage" => $numPage]);
    }
    public function update()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $this->updateContact($id);
        header("location:index.php?controller=contact");
    }
}
