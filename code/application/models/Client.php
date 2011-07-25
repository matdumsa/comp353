<?php

class Client extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($clientId = "*")
    {
        $query = $this->db->get('Client');
        return $query->result();
    }

    function insert($clientId = "*")
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