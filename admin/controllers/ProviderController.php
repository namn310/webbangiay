<?php
include('models/ProviderModel.php');
class ProviderController extends Controller
{
    use ProviderModel;
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
        $this->loadView('ProviderView.php', ["data" => $data, "numPage" => $numPage]);
    }
    public function create()
    {
        $action = "index.php?controller=provider&action=createPost";
        $this->loadView('CreateProviderView.php', ['action' => $action]);
    }
    public function createPost()
    {
        $this->createProvider();
        header("location:index.php?controller=provider");
    }
    public function update()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $conn = Connection::getInstance();
        $query = $conn->query("select * from providers where id=$id");
        $result = $query->fetchAll();
        $action = "index.php?controller=provider&action=updateProvider&id=$id";
        $this->loadView('EditProvider.php', ['action' => $action, 'result' => $result]);
    }
    public function updateProvider()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $this->updatePost($id);
        header("location:index.php?controller=provider");
    }
    public function delete()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $this->deletePost($id);
        header("location:index.php?controller=provider");
    }
}
