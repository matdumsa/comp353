<?php

class clientModel extends CI_Model {

		protected $id = "clientId";
		protected $dateofbirth = "clientDateOfBirth";
		protected $address = "clientAddress";
		protected $joiningdate = "clientJoiningDate";
		protected $name = "clientName";
		protected $category = "clientCategory";

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($ClientId = "*")
    {
    	if ($ClientId == "*")
    	        $query = $this->db->get('Client_Overview');
		else
    			$query = $this->db->get_where('Client_Overview',array($id => $ClientID));
        return $query->result();
    }

    function insert($Address,$DateOfBirth,$Name,$Category)
    {
    
    	$record = array(
	      	$address => $Address,
	        $dateofbirth => $DateOfBirth,
	        $joiningdate => date(),
	        $name => $Name,
	        $category => $Category);

        $this->db->insert('Client', $record);
       	return $this->db->insertid();
    }

    function update($ClientId,$Address,$BirthOfDate,$Name,$Category)
    {
    	$record = array(
	      	$address => $Address,
	        $dateofbirth => $DateOfBirth,
	        $name => $Name,
	        $category => $Category);
        $this->db->update('Client', $record, array($id => $ClientID ));
    }
    
     function delete($clientId)
    {
        $this->db->delete('Client', array($id => $ClientId));
    }

}