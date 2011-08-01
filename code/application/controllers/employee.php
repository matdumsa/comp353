<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Employee extends CI_Controller {

	public function add() {
		// Make sure you have the right to add
		$this->load->model("EmployeeModel");
		$response = $this->EmployeeModel->insert($this->input->post('employeeAddress'),$this->input->post('employeeTitle'),$this->input->post('employeeName'),$this->input->post('employeeHourlySalary'),$this->input->post('employeeBranchId'));
		print json_encode($response);
	}
	
	public function remove($employee_id) {
		// Make sure you have the right to remove
		$this->load->model("EmployeeModel");
		$response = $this->EmployeeModel->delete($employee_id);
		print '{"status":"ok"}';
	}
	
	public function modify($employee_id) {
		// Make sure you have the right to modify
		$this->load->model("EmployeeModel");
		$response = $this->EmployeeModel->update($employee_id, $this->input->post('employeeAddress'),$this->input->post('employeeTitle'),$this->input->post('employeeName'),$this->input->post('employeeHourlySalary'),$this->input->post('employeeBranchId'));
		print json_encode($response);
	
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

