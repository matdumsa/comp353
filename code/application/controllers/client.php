<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Client extends CI_Controller {

	public function add() {
		// Make sure you have the right to add
		
		$this->load->model("clientModel");
		$response = $this->clientModel->insert($this->input->post('clientAddress'),$this->input->post('clientDateOfBirth'),$this->input->post('clientName'),$this->input->post('clientCategory'));
		print json_encode($response);
	}

	public function remove($client_id) {
		// Make sure you have the right to remove

		$this->load->model("clientModel");
		$response = $this->clientModel->delete($client_id);
		print '{"status":"ok"}';
	
	}
	
	public function modify($client_id) {
		// Make sure you have the right to modify

		$this->load->model("clientModel");
		$response = $this->clientModel->update($client_id, $this->input->post('clientAddress'),$this->input->post('clientDateOfBirth'),$this->input->post('clientName'),$this->input->post('clientCategory'));
		print json_encode($response);
	
	}
	
	public function view() {

		$this->load->view('clientView');
	}
	
	public function getList() {
		hasRight("getClientList", $this->session);			
		$this->load->model("clientModel");
		print json_encode($this->clientModel->select("*"));
	}

	public function getInfo($client_id) {
		hasRight("getClientList", $this->session);			
		$this->load->model("clientModel");
		print json_encode($this->clientModel->select($client_id));
	}

}

