<?php
trait VoucherModel
{
    public function modelRead($recordPerPage)
    {
        //lay bien page truyen tu url
        $page = isset($_GET["page"]) && is_numeric($_GET["page"]) && $_GET["page"] > 0 ? $_GET["page"] - 1 : 0;
        //lay tu ban ghi nao
        $from = $page * $recordPerPage;
        //---
        //lay bien ket noi
        $conn = Connection::getInstance();
        $query = $conn->query("select * from vouchers order by id desc limit $from,$recordPerPage");
        //lay tat ca ket qua tra ve
        $result = $query->fetchAll();
        //---
        return $result;
    }
    //ham tinh tong so ban ghi
    public function modelTotal()
    {
        //lay bien ket noi
        $conn = Connection::getInstance();
        $query = $conn->query("select id from vouchers");
        //ham rowCount: dem so ket qua tra ve
        return $query->rowCount();
    }
    public function getNameCat($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select name from categories where id=$id");
        $row = $query->fetchAll();
        foreach ($row as $a) {
            return $a->name;
        }
    }
    public function getIdCat($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select id from categories where id=$id");
        $row = $query->fetchAll();
        foreach ($row as $a) {
            return $a->id;
        }
    }
    public function modelListCategories()
    {
        //lay bien ket noi
        $conn = Connection::getInstance();
        $query = $conn->query("select id,name from categories where parent_id = 0 order by id desc");
        //tra ve mot ban ghi
        return $query->fetchAll();
    }
    public function modelListCategoriesSub($id)
    {
        //lay bien ket noi
        $conn = Connection::getInstance();
        $query = $conn->query("select id,name from categories where parent_id = $id order by id desc");
        //tra ve mot ban ghi
        return $query->fetchAll();
    }
    public function createVoucher()
    {
        $ma = $_POST['ma'];
        $count = $_POST['count'];
        $discount = $_POST['discount'];

        $OrderCon = $_POST['OrderCon'];
        $CountCon = $_POST['CountCon'];
        $content = $_POST['content'];
        $timestart = $_POST['timestart'];
        $timeend = $_POST['timeend'];
        $conn = Connection::getInstance();
        $query = $conn->prepare("insert into vouchers set ma=:ma,soluong=:count,dk_hoadon=:OrderCon,timeStart=:start,timeEnd=:end,dk_soluong=:CountCon,discount=:discount,description=:des");
        $query->execute(['ma' => $ma, 'count' => $count, 'OrderCon' => $OrderCon, 'start' => $timestart, 'end' => $timeend, 'CountCon' => $CountCon, 'discount' => $discount, 'des' => $content]);
    }
    public function updatePost($id)
    {
        $ma = $_POST['ma'];
        $count = $_POST['count'];
        $discount = $_POST['discount'];

        $OrderCon = $_POST['OrderCon'];
        $CountCon = $_POST['CountCon'];
        $content = $_POST['content'];
        $timestart = $_POST['timestart'];
        $timeend = $_POST['timeend'];
        $conn = Connection::getInstance();
        $query = $conn->prepare("update vouchers set ma=:ma,soluong=:count,dk_hoadon=:OrderCon,timeStart=:start,timeEnd=:end,dk_soluong=:CountCon,discount=:discount,description=:des where id=:id");
        $query->execute(['ma' => $ma, 'count' => $count, 'OrderCon' => $OrderCon, 'start' => $timestart, 'end' => $timeend, 'CountCon' => $CountCon, 'discount' => $discount, 'des' => $content, 'id' => $id]);
    }
    public function outDateVoucher($id)
    {
        $conn = Connection::getInstance();
        $conn->query("update vouchers set status=0 where id=$id");
    }
    public function resetVoucher($id)
    {
        $conn = Connection::getInstance();
        $conn->query("update vouchers set status=1 where id=$id");
    }
}
