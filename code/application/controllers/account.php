<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Account extends CI_Controller {

	public function add() {
		// Make sure you have the right to add
		$this->load->model("AccountModel");

		$response = $this->AccountModel->insert(
			$this->input->post("accountType")
			, $this->input->post("accountBalance")
			, $this->input->post("accountOption")
			, $this->input->post("accountBranchId")
			, $this->input->post("accountRateId")
			, $this->input->post("accountPlanId")
			, $this->input->post("accountCreditLimit")
			, $this->input->post("accountLevel")
		);
		print json_encode($response);
	}

	public function remove($client_id) {
		// Make sure you have the right to remove
		
		$this->load->model("AccountModel");
		$this->AccountModel->delete($client_id);
		print '{"status":"ok"}';
	
	}
	
	public function modify($client_id) {

		$this->load->model("AccountModel");
		$response = $this->AccountModel->update(
			$client_id
			, $this->input->post("accountType")
			, $this->input->post("accountOption")
			, $this->input->post("accountBranchId")
			, $this->input->post("accountRateId")
			, $this->input->post("accountPlanId")
			, $this->input->post("accountCreditLimit")
			, $this->input->post("accountLevel")
			, $this->input->post("accountBalance")
		);
		
		print json_encode($response);
	}
	
	public function view() {

		$this->load->model("PlanModel");
		$this->load->model("BranchModel");
		$this->load->model("RateModel");

		$data = array();
		$data["plans"] = $this->PlanModel->select();
		$data["branches"] = $this->BranchModel->select();
		$data["rates"] = $this->RateModel->select();

		$this->load->view('accountView', $data);
	}
	
	
		public function mine() {

		$this->load->model("PlanModel");
		$this->load->model("BranchModel");
		$this->load->model("RateModel");

		$data = array();
		$data["plans"] = $this->PlanModel->select();
		$data["branches"] = $this->BranchModel->select();
		$data["rates"] = $this->RateModel->select();

		$this->load->view('accountMine', $data);
	}

	public function associate($account_id, $client_id) {
		$this->load->model("AccountModel");
		$this->AccountModel->associate($account_id, $client_id);
		print '{"status":"ok"}';
	}	

	public function dissociate($account_id, $client_id) {
		$this->load->model("AccountModel");
		$this->AccountModel->dissociate($account_id, $client_id);			
		print '{"status":"ok"}';
	}	

	public function getList() {
		hasRight("getAccountList", $this->session);			
		$this->load->model("AccountModel");
		print json_encode($this->AccountModel->select("*"));
	}
	
	public function getAccountsByUserId($user) {
		hasRight("getAccountList", $this->session);			
		$this->load->model("AccountModel");
		print json_encode($this->AccountModel->getAccountsByUserId($user));
	}

	public function getMyAccounts() {
		return $this->getAccountsByUserId($this->session->userdata("id"));
	}
	
	

}

