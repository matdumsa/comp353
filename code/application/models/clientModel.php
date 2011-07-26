<?php

class clientModel extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($ClientId = "*")
    {
    	if ($ClientId == "*")
    	        $query = $this->db->get('Client');
		else
    			$query = $this->db->get_where('Client',array('clientId' => $ClientID));
        return $query->result();
    }

    function insert($Address,$DateOfBirth,$Name,$Category)
    {
    
    	$record = array(
	      	"address" => $Address,
	        "dateOfBirth" => $DateOfBirth,
	        "joiningDate" => date(),
	        "name" => $Name,
	        "category" => $Category);

        $this->db->insert('Client', $record);
       	return $this->db->insertid();
    }

    function update($ClientId,$Address,$BirthOfDate,$Name,$Category)
    {
    	$record = array(
	      	"address" => $Address,
	        "dateOfBirth" => $DateOfBirth,
	        "joiningDate" => date(),
	        "name" => $Name,
	        "category" => $Category,
	        "clientID"=> $ClientID);
        $this->db->update('Client', $record, array('clientId' => $ClientID ));
    }
    
     function delete($clientId)
    {
        $this->db->delete('Client', array('clientId' => $ClientId));
    }

}