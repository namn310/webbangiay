<?php

session_start();
include "../application/Connection.php";
include "../models/binhluanModel.php";

 /*
 function showbinhluan(){
    $sql="SELECT * FROM comment ORDER BY id_comment DESC";
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt=$conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    return $stmt->fetchAll();
}*/
    if(isset($_SESSION["customer_email"])&&($_SESSION["customer_email"]!="")){
        $user=$_SESSION["customer_email"];
        
    }
        else{
            $user="";
        }
        if(isset($_POST['guibinhluan'])&&$_POST['guibinhluan']&& $user!=""){
            $name=$_POST['name'];
            $noidung=$_POST['noidung'];
            $product_id=$_GET['idsp'];
            $iduser=$_SESSION["customer_id"];
            $date=date('d-M-Y');
            //
            addComment($name,$iduser,$product_id,$noidung,$date);
        }
       // $listcomment=showbinhluan();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comment</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="width:100%;overflow-y:hidden">
    <form id="comment_form" method="post" style="width:100%">
        <input type="text" hidden name="name" value="<?php echo $user?>">
        <input type="hidden" name="idsp" value="<?php $_GET['idsp'] ?>">
        <input placeholder="Nhập bình luận của bạn ..." name="noidung" required id="noidung" style=" width:100%;min-height:100px;resize:none;
        border-radius:4px">
        <input class="btn btn-primary" id="guibinhluan" style="margin-top:10px" type="submit" value="Gửi bình luận" name="guibinhluan">
    </form>
    <?php
if(!isset($_SESSION["customer_email"])){
    echo"<a href='../index.php' target='_parent'>Bạn vui lòng đăng nhập để có thể bình luận</a>";
}

?>
    
    <script>
        //load bình luận
        $(document).ready(function(){
            $("#guibinhluan").load("../controllers/binhluanController.php");
        })
    </script>
    <!-- dung ajax để load bình luận 
    
<script type="text/javascript">
   $(document).ready(function()
   { 
      //khai báo biến submit form lấy đối tượng nút submit
      var submit = $("#guibinhluan");

      //khi nút submit được click
      submit.click(function()
      {
        //khai báo các biến dữ liệu gửi lên server
        var user = $("input[name='name']").val(); //lấy giá trị trong input user

        var product_id=$("input[name='idsp']").val();
        var noidung=$("input[name='noidung']").val();
        //Kiểm tra xem trường đã được nhập hay chưa
        //Lấy toàn bộ dữ liệu trong Form
        var datas = $('form#comment_form').serialize();
      
        //Sử dụng phương thức Ajax.
        $.ajax({
              type : 'POST', //Sử dụng kiểu gửi dữ liệu POST
              url : 'binhluanController.php', //gửi dữ liệu
              data : datas, //dữ liệu sẽ được gửi
              success : function(data)  // Hàm thực thi khi nhận dữ liệu được từ server
                        { 
                           if(data == 'false') 
                           {
                             alert('');
                           }else{
                             $('#content').html(data); //dữ liệu HTML trả về sẽ được chèn vào trong thẻ có id content
                           }
                        }
              });
              return false;
        });
    });
</script>
-->
    <?php
    //show bình luận
    $idsp=$_GET['idsp'];
    $sql="SELECT id,noidung,name,postdate FROM comment WHERE comment.idsp=$idsp ORDER BY id DESC";
    $conn = Connection::getInstance();
    $stmt=$conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $row=$stmt->fetchAll();
    ?>
    <div class="container" style="width:100%;height:200px;margin-top:20px;overflow-y:auto;overflow-x:hidden">
        <?php 
        foreach($row as $bl){
            //echo $bl['name'].' - '.$bl['noidung']."<br>";
            ?>
     <div class="list-comment"  width="100%">
        <div class="row">
            <div class="col-sm-2 col-sm-3">
                <img style="width:50px;height:50px" class="img-fluid" src="avt1.jpg">
            </div>
            
            <div class="col-sm-10 col-sm-9">
        <span style="font-weight:bold;font-size:15px;color:blue" class="user-name"><?php echo $bl['name']?></span>
        <span style="font-weight:lighter" class="comment-time">/<?php echo $bl['postdate']?></span>
        <div style="margin-left:40px"class="noidung"><?php echo $bl['noidung']?></div>
        
        <br>
        <hr>
     </div> 
     </div>
     </div>
       <?php 
        } 
        
        ?>
 </div>
<script >
    $(document).ready(function(){
        $("#reply").click(function(){
            $("#reply-box").toggle();
        })
    })
</script>
</body>
</html>
