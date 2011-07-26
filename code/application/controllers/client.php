<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Client extends CI_Controller {

	public function add($field1, $field2, $field3) {
		// Make sure you have the right to add
		
	}

	public function remove($client_id) {
		// Make sure you have the right to remove
	
	}
	
	public function modify($client_id, $field1, $field2) {
		// Make sure you have the right to modify
	
	}
	
	public function view() {
		// Make sure you have the right to modify
		$this->load->library('session');


		$this->load->view('clientView');
	}
	
	public function getList() {
		hasRight("getClientList", $this->session);			
		$this->load->model("clientModel");
		print json_encode($this->clientModel->select("*"));
	}

}

