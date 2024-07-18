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
		$data = $conn->query('select * from vouchers');
		$this->loadView("HomeView.php", ['data' => $data]);
	}
	public function voucher()
	{
		if (!isset($_SESSION['customer_id'])) {
			header("location:index.php?controller=account&action=login");
		} else {
			header("location:index.php");
		}
	}
}
