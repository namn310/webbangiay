<?php
//load file model
include "models/HomeModel.php";
class HomeController extends Controller
{
	//ke thua HomeModel
	use HomeModel;
	public function index()
	{
		//load view
		$conn = Connection::getInstance();
		$currentDate = new DateTime();
		$data = $conn->query("select * from vouchers where soluong > 0 and status > 0");
		// and timeStart >=$currentDate and timeEnd<=$currentDate
		$this->loadView("HomeView.php", ['data' => $data]);
	}
	public function voucher()
	{
		if (!isset($_SESSION['customer_id'])) {
			header("location:index.php?controller=account&action=login");
		} else {
			$this->SaveVoucher();
			header("location:index.php");
		}
	}
}
