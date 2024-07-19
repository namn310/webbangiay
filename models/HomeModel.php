<?php
trait HomeModel
{
	//hot product
	public function modelHotProducts()
	{
		$search = isset($_GET['search']) ? $_GET['search'] : '';
		$conn = Connection::getInstance();
		$check = "";
		if ($search) {
			$check = "and name like '%$search%'";
		}
		$query = $conn->query("select * from products where hot=1 and discount>0 $check order by id desc");
		$result = $query->fetchAll();
		return $result;
	}
	public function modelGetCategories()
	{
		$conn = Connection::getInstance();
		$query = $conn->query("select * from categories where displayhomepage=1 order by id desc");
		$result = $query->fetchAll();
		return $result;
	}
	public function modelGetProducts($category_id)
	{
		$search = isset($_GET['search']) ? $_GET['search'] : '';
		$conn = Connection::getInstance();
		$check = "";
		if ($search) {
			$check = "and name like '%$search%'";
		}
		//lay cac san pham thuoc danh muc do va danh muc cap con cua no
		$query = $conn->query("select * from products where category_id in (select id from categories where id=$category_id or  parent_id=$category_id) $check order by id desc");
		$result = $query->fetchAll();
		return $result;
	}
	public function modelGetHotNews()
	{
		$conn = Connection::getInstance();
		$query = $conn->query("select * from news where hot=1 order by id desc");
		$result = $query->fetchAll();
		return $result;
	}
	public function SaveVoucher()
	{
		$idVoucher = $_POST['idVoucher'];
		$idCus = $_POST['idCus'];
		$conn = Connection::getInstance();
		$query = $conn->prepare('insert into voucheruser set idVoucher=:idVoucher, idUser=:idUser,soluong=:count');
		$query->execute([':idVoucher' => $idVoucher, ':idUser' => $idCus, ':count' => 1]);
		$query2 = $conn->query("select soluong from vouchers where id=$idVoucher");
		foreach ($query2 as $row) {
			$countVoucher = $row->soluong;
		}
		$query3 = $conn->prepare("update vouchers set soluong=:count where id=:id");
		$query3->execute([':id' => $idVoucher, ':count' => $countVoucher - 1]);
	}
	public function checkVoucher($id)
	{
		$conn = Connection::getInstance();
		$query = $conn->prepare('select id from voucheruser where idVoucher=:id');
		$query->execute([':id' => $id]);
		return $query->rowCount();
	}
}
