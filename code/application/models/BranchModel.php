<?php

class BranchModel extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
	function select() {
    	$query = $this->db->get('Branch');
   		return $query->result();
	}
}