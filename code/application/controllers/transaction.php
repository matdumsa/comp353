<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class transaction extends CI_Controller {


	
		
	public function view() {

		$this->load->model("AccountModel");
		$data = array();
		$data["accounts"] = $this->AccountModel->getAccountsByUserId($this->session->userdata("id"));
		$this->load->view('transactionView', $data);
	}
	
	public function getList($user) {
		//hasRight("getClientList", $this->session);			
		$this->load->model("AccountModel");
		print json_encode($this->AccountModel->getUserTransaction($user));
	}
	
	public function getTransaction() {
		return $this->getList($this->session->userdata("id"));
	}

	public function transferMoney($amount, $from, $to) {
		$this->load->model("AccountModel");
		if ($this->AccountModel->transferMoney($amount, $from, $to)) {
			print json_encode(array("status"=>"ok"));
		};
		else {
			print json_encode(array("status"=>"not-ok", "reason":"insufficient funds"));		
		}
	
	}
		
}

