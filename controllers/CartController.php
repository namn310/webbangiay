<?php
include "models/CartModel.php";
class CartController extends Controller
{
	//ke thua class CartModel
	use CartModel;
	//ham tao
	public function __construct()
	{
		//neu gio hang chua ton tai thi khoi tao no
		if (isset($_SESSION["cart"]) == false)
			$_SESSION["cart"] = array();
	}
	//them san pham vao gio hang
	public function create()
	{
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		//goi ham cartAdd de them san pham vao gio hang
		$this->cartAdd($id);
		//quay tro lai trang gio hang
		header("location:index.php?controller=cart");
	}
	//hien thi gio hang
	public function index()
	{
		$id = isset($_SESSION['customer_id']) ? $_SESSION['customer_id'] : 0;
		$conn = Connection::getInstance();
		$query = $conn->query("SELECT voucheruser.idVoucher,vouchers.timeStart, vouchers.timeEnd FROM `voucheruser` INNER JOIN vouchers ON voucheruser.idVoucher=vouchers.id");
		foreach ($query->fetchAll() as $row) {
			$now = new DateTime();
			$timeend = new DateTime($row->timeEnd);
			$timestart = new DateTime($row->timeStart);
			if ($now > $timeend || $now < $timestart) {
				$this->outDateVoucher($row->idVoucher);
			}
		}
		$data = $conn->query("select * from voucheruser where idUser=$id and soluong >0");
		$this->loadView("CartView.php", ['data' => $data]);
	}

	//xoa san pham khoi gio hang
	public function delete()
	{
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		//goi ham cartDelete de them san pham vao gio hang
		$this->cartDelete($id);
		//quay tro lai trang gio hang
		header("location:index.php?controller=cart");
	}
	//xoa toan bo gio hang
	public function destroy()
	{
		//goi ham cartDestroy de xoa gio hang
		$this->cartDestroy();
		//quay tro lai trang gio hang
		header("location:index.php?controller=cart");
	}
	//cap nhat nhieu san pham
	public function update()
	{
		//duyet cac phan tu trong session array
		foreach ($_SESSION["cart"] as $product) {
			$id = $product["id"];
			$quantity = $_POST["product_$id"];
			//goi ham cartUpdate de update lai so luong
			$this->cartUpdate($id, $quantity);
		}
		//quay tro lai trang gio hang
		header("location:index.php?controller=cart");
	}
	//thanh toan gio hang

	public function checkout()
	{
		// $totalNoVoucher = $_POST['totalWithoutVoucher'];
		// // $totalWithVoucher = $_POST['totalWithVoucher'];
		// echo $totalNoVoucher;

		// kiem tra neu user chua dang nhap thi di chuyen den trang dang nhap
		if (isset($_SESSION["customer_email"]) == false)
			header("location:index.php?controller=account&action=login");
		else {
			//goi ham cartCheckOut de thanh toan gio hang
			$id = $this->cartCheckOut();
			header("location:index.php?controller=checkout&id=$id");
		}
	}
	public function usevoucher()
	{
		$error = "Đơn hàng của bạn không đủ điều kiện để dùng Voucher";
		$success = "Sử dụng voucher thành công";
		$id = isset($_SESSION['customer_id']) ? $_SESSION['customer_id'] : 0;
		$conn = Connection::getInstance();
		$data = $conn->query("select * from voucheruser where idUser=$id");
		$idVoucher = isset($_GET['voucher']) ? $_GET['voucher'] : 0;
		$CountCon = $_POST['CountCon'];
		$OrderCon = $_POST['OrderCon'];
		$discount = $_POST['Discount'];
		$result = $this->cartTotalWithVoucher($discount, $CountCon, $OrderCon, $idVoucher);
		if ($result > 0) {
			$this->loadView("CartView.php", ['data' => $data, 'result' => $result, 'success' => $success, 'idVoucher' => $idVoucher]);
		} else {
			$this->loadView("CartView.php", ['data' => $data, 'error' => $error, 'idVoucher' => $idVoucher]);
		}
	}
}
