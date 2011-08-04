<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class transaction extends CI_Controller {


	
		
	public function view() {

		$data = array();
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

		
}

