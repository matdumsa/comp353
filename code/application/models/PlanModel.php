<?php

class PlanModel extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
	function select() {
		$query = $this->db->get('Charge_plans');	
  		return $query->result();
	}
}