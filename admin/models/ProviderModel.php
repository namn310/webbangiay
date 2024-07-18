<?php
trait ProviderModel
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
        $query = $conn->query("select * from providers order by id desc limit $from,$recordPerPage");
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
        $query = $conn->query("select id from providers");
        //ham rowCount: dem so ket qua tra ve
        return $query->rowCount();
    }
    public function createProvider()
    {
        $conn = Connection::getInstance();
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $local = $_POST['local'];
        $query = $conn->prepare("insert into providers set name=:name,phone=:phone,email=:email,local=:local");
        $query->execute([':name' => $name, ':phone' => $phone, ':email' => $email, ':local' => $local]);
    }
    public function updatePost($id)
    {
        $conn = Connection::getInstance();
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $local = $_POST['local'];
        $query = $conn->prepare("update providers set name=:name,phone=:phone,email=:email,local=:local");
        $query->execute([':name' => $name, ':phone' => $phone, ':email' => $email, ':local' => $local]);
    }
    public function deletePost($id)
    {
        $conn = Connection::getInstance();
        $conn->query("delete from providers where id=$id");
    }
}
