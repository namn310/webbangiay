<?php
trait ContactModel
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
        $query = $conn->query("select * from contact order by id desc limit $from,$recordPerPage");
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
        $query = $conn->query("select id from contact");
        //ham rowCount: dem so ket qua tra ve
        return $query->rowCount();
    }
    public function updateContact($id)
    {
        $conn = Connection::getInstance();
        $conn->query("update contact set status=1 where id=$id");
    }
}
