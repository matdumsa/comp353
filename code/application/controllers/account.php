<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Account extends CI_Controller {

	public function add() {
		// Make sure you have the right to add
		$this->load->model("AccountModel");
		$response = $this->AccountModel->insert($this->post("field1"));		
		print json_encode($response);
	}

	public function remove($client_id) {
		// Make sure you have the right to remove
	
	}
	
	public function modify($client_id, $field1, $field2) {
		// Make sure you have the right to modify
	
	}
	
	public function view() {

		$this->load->view('accountView');
	}
	
	public function getList() {
		hasRight("getAccountList", $this->session);			
		$this->load->model("AccountModel");
		print json_encode($this->AccountModel->select("*"));
	}

}

