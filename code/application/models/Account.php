<?php

class Account extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($AccountId = "*")
    {
    	if ($ClientId = "*")
    	        $query = $this->db->get('Client');
		else
    			$query = $this->db->query("SELECT * FROM Client where accountNumber =" . $AccountId);
        return $query->result()
    }

    function insert($Type,$Balance,$AccountOption,$CreationDate)
    {
      	$this->type = $Address;
        $this->creation_date = $CreationDate;
        $this->joiningDate = date();
        $this->name   = $Name;
        $this->category = $Category;
        $this->db->insert('Client', $this);
       	return $this->db->insertid();
    }

    function update($ClientId,$Address,$BirthOfDate,$Name,$Category)
    {
    	$this->address = $Address;
        $this->creation_date = $BirthOfDate;
        $this->account_option   = $Name;
        $this->category = $Category;
        $this->clientID = $ClientId;
        $this->db->update('Client', $this, array('client_id' => $this->clientID ));
    }
    
     function delete($clientId)
    {
    	this->clientID = $clientId;
        $this->db->delete('Client', $this, array('client_id' => $this->clientId));
    }

}