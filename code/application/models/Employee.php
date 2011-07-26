<?php

class Employee extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($EmployeeId = "*")
    {
    	if ($ClientId = "*")
    	        $query = $this->db->get('Employee');
		else
    			$query = $this->db->query("SELECT * FROM Employee where clinetId =" . $ClientID);
        return $query->result();
    }

    function insert($EmployeeId = "*")
    {
      	$this->title   = $_POST['title']; // please read the below note
        $this->content = $_POST['content'];
        $this->date    = time();
        $this->db->insert('Employee', $this);
       	return $this->db->insertid();
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