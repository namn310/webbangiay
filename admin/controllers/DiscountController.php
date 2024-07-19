<?php
include('models/DiscountModel.php');
class DiscountController extends Controller
{
    use DiscountModel;
    public function index()
    {
        //quy dinh so ban ghi mot trang
        $recordPerPage = 20;
        //tinh so trang
        //ham ceil la ham lay tran. VD: ceil(2.1) = 3
        $numPage = ceil($this->modelTotal() / $recordPerPage);
        //lay danh sach cac ban ghi co phan trang
        $data = $this->modelRead($recordPerPage);
        $conn = Connection::getInstance();
        $query = $conn->query("select * from discount");
        foreach ($query->fetchAll() as $row) {
            $now = new DateTime();
            $timeend = new DateTime($row->dateEnd);
            $timestart = new DateTime($row->dateStart);
            if ($now > $timeend || $now < $timestart) {
                $this->outDateDiscount($row->id);
            } else {
                $this->resetDiscount($row->id);
            }
        }
        //goi view, truyen du lieu ra view
        $this->loadView('DiscountView.php', ["data" => $data, "numPage" => $numPage]);
    }
    public function create()
    {
        $action = "index.php?controller=discount&action=createDiscount";
        $this->loadView('CreateDiscountView.php', ['action' => $action]);
    }
    public function update()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $conn = Connection::getInstance();
        $query = $conn->query("select * from discount where id=$id");
        $result = $query->fetchAll();
        $action = "index.php?controller=discount&action=updateDiscount&id=$id";
        $this->loadView('EditDiscountForm.php', ['action' => $action, 'result' => $result]);
    }
    public function delete()
    {
        $id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
        $conn = Connection::getInstance();
        $query = $conn->query("select idCat from discount where id=$id");
        $row = $query->fetchAll();
        foreach ($row as $a) {
            $idCat = $a->idCat;
        }
        $query2 = $conn->prepare("update products set discount=:discount where category_id=:cat");
        $query2->execute([":discount" => ' ', ":cat" => $idCat]);
        $conn->query("delete from discount where id=$id");
        header("location:index.php?controller=discount");
    }
}
