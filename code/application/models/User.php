<?php

class User extends CI_Model {


       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    

	public function getEmployeeInformation($employee_id) {

            $schedule = array();
            $pay_information = array();
            $information = array("type"=>"employee", "id" => $employee_id, "schedule" => $schedule, "pay" => $pay_information);
                   
            return $information;
	}

	public function getClientInformation($client_id) {
		$information = array("type"=>"client", "id" => $client_id);
		return $information;
	}
	
	public function getMyInformation() {
		$type = $this->session->userdata('type');
		$id  = $this->session->userdata('id');
		if ($type == "client")
		{
			return $this->getClientInformation($id);
		}
		else if ($type == "manager" || $type == "clerk")
		{
			return $this->getEmployeeInformation($id);
		}
		else die("Impossible to determine who you are");
	}

}