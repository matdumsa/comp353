<?php

class Employee extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($EmployeeId = "*")
    {
        $query = $this->db->get('Employee');
        return $query->result();
    }

    function insert($EmployeeId = "*")
    {
        $this->db->insert('Employee', $this);
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