<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Employee extends CI_Controller {

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

		$this->load->view('employeeView');
	}
	
	public function getList() {
		hasRight("getEmployeeList", $this->session);			
		$this->load->model("EmployeeModel");
		print json_encode($this->EmployeeModel->select("*"));
	}

}

