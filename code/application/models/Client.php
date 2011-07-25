<?php

class Client extends CI_Model {

    var $client_id = '';
    var $address = '';
    var $date_of_birth = '';
    var $joining_date = '';
    var $name = '';
    var $category = '';
    function __construct($Address,$date_of_birth,$Joining_date,$Name,$Category)
    {
    	$address =  $Address;
    	$birth_of_birth = $Day_of_birth;
	$joining_date   = $Joining_date;
   	$name = $Name;
        $category = $Category;
        // Call the Model constructor
        parent::__construct();
    }
    
    function select()
    {
        $query = $this->db->get('Client');
        return $query->result();
    }

    function insert()
    {
        $this->db->insert('Client', $this);
        $client_id = $this->db->insertid();
    }

    function update()
    {
        $this->db->update('Client', $this, array('client_id' => $this->client_id ));
    }
    
    function delete()
    {
        $this->db->delete('Client', $this, array('client_id' => $this->client_id));
    }

}