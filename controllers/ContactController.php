<?php
include('models/ContactModel.php');
class ContactController extends Controller
{
	use ContactModel;
	public function index()
	{
		$this->loadView("ContactView.php");
	}
	public function create()
	{
		$success = "Cảm ơn bạn đã phản hồi";
		$error = "Có vấn đề";
		if ($this->createContact() > 0) {
			$this->loadView("ContactView.php", ['success' => $success]);
		} else {
			$this->loadView("ContactView.php", ['error' => $error]);
		}
	}
}
