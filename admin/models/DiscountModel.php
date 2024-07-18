<?php
trait DiscountModel
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
        $query = $conn->query("select * from discount order by id desc limit $from,$recordPerPage");
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
        $query = $conn->query("select id from discount");
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
    public function updateDiscount()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $conn = Connection::getInstance();
        $name = $_POST['nameDiscount'];
        $discount = $_POST['discount'];
        $idCat = $_POST['category_id'];
        $timestart = $_POST['timestart'];
        $timeend = $_POST['timeend'];
        $query = $conn->prepare('update discount set name=:name,discount=:discount,idCat=:idCat,datestart=:datestart,dateend=:dateend');
        $query->execute([":name" => $name, ":discount" => $discount, ":idCat" => $idCat, ":datestart" => $timestart, ":dateend" => $timeend]);
        $query2 = $conn->prepare('update products set discount=:discount where category_id=:cat');
        $query2->execute([":discount" => $discount, ":cat" => $idCat]);
        header("location:index.php?controller=discount");
    }
    //lay mot ban ghi tuong ung voi id truyen vao
    public function createDiscount()
    {
        $conn = Connection::getInstance();
        $name = $_POST['nameDiscount'];
        $discount = $_POST['discount'];
        $idCat = $_POST['category_id'];
        $timestart = $_POST['timestart'];
        $timeend = $_POST['timeend'];
        $query = $conn->prepare('insert into discount set name=:name,discount=:discount,idCat=:idCat,datestart=:datestart,dateend=:dateend');
        $query->execute([":name" => $name, ":discount" => $discount, ":idCat" => $idCat, ":datestart" => $timestart, ":dateend" => $timeend]);
        header("location:index.php?controller=discount");
    }
    public function delete($id)
    {
        $conn = Connection::getInstance();
        $idCat = $this->getIdCat($id);
        $conn->query("delete from discount where id=$id");
        $conn->query("update products set discount='' where category_id=$idCat");
        // $query2->execute([":discount" => 2, ":cat" => $this->getIdCat($id)]);
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
}
