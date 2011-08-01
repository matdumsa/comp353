<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Client extends CI_Controller {

	public function add() {
		// Make sure you have the right to add
		
		$this->load->model("clientModel");
		$response = $this->clientModel->insert($this->input->post('address'),$this->input->post('date_of_birth'),$this->input->post('name'),$this->input->post('category'));
		print json_encode($response);
	}

	public function remove($client_id) {
		// Make sure you have the right to remove
	
	}
	
	public function modify($client_id, $field1, $field2) {
		// Make sure you have the right to modify
	
	}
	
	public function view() {

		$this->load->view('clientView');
	}
	
	public function getList() {
		hasRight("getClientList", $this->session);			
		$this->load->model("clientModel");
		print json_encode($this->clientModel->select("*"));
	}

}

