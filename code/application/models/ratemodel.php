<?php

class RateModel extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
	function select() {
		$query = $this->db->get('Interest_Rate');	
  		return $query->result();
	}
}