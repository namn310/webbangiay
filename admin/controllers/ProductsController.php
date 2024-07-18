<?php
//load file model
include "models/ProductsModel.php";
class ProductsController extends Controller
{
	//ke thua class ProductsModel
	use ProductsModel;
	//liet ke so ban ghi
	public function index()
	{
		//quy dinh so ban ghi mot trang
		$recordPerPage = 20;
		//tinh so trang
		//ham ceil la ham lay tran. VD: ceil(2.1) = 3
		$numPage = ceil($this->modelTotal() / $recordPerPage);
		//lay danh sach cac ban ghi co phan trang
		$data = $this->modelRead($recordPerPage);
		//goi view, truyen du lieu ra view
		$this->loadView("ProductsView.php", ["data" => $data, "numPage" => $numPage]);
	}
	//update
	public function update()
	{
		$id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
		//tao bien action de xuat vao thuoc tinh action cua the form
		$action = "index.php?controller=products&action=updatePost&id=$id";
		$record = $this->modelGetRecord($id);
		//goi view
		$this->loadView("ProductsForm.php", ["record" => $record, "action" => $action]);
	}
	//update - POST
	public function updatePost()
	{
		$id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
		$this->modelUpdate($id);
		//quay tro lai mvc products
		header("location:index.php?controller=products");
	}
	//create
	public function create()
	{
		//tao bien action de xuat vao thuoc tinh action cua the form
		$action = "index.php?controller=products&action=createPost";
		//goi view
		$this->loadView("ProductsForm.php", ["action" => $action]);
	}
	//crete POST
	public function createPost()
	{
		$this->modelCreate();
		//quay tro lai mvc products
		header("location:index.php?controller=products");
	}
	//delete
	public function delete()
	{
		$id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
		$this->modelDelete($id);
		//quay tro lai mvc products
		header("location:index.php?controller=products");
	}
}
