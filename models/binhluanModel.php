<?php
// add comment
function addComment($name,$iduser,$idsp,$noidung,$date){
    $sql="INSERT INTO comment(name,iduser,idsp,noidung,postdate) VALUES ('$name','$iduser','$idsp','$noidung','$date')";
    $conn = Connection::getInstance();
    $conn->exec($sql);
 }
 /*
function showbinhluan(){
    $sql="SELECT noidung FROM comment,products where comment.idsp=products.id ORDER BY comment.id DESC";
    $conn = Connection::getInstance();
    $stmt=$conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    return $stmt->fetchAll();
}
*/


?>