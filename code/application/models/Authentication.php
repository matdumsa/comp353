<?php

class Authentication extends CI_Model {


       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function verifyCredentials($username, $password)
    {
		$result = $this->db->get_where("Password",array("Username"=>$username, "Password"=>$password));
		if ($result->num_rows() == 1)
			return $result->row(0);
		else
			return false;
    }



	function createCredentials($username, $password) {
		if ($this->userExists($username))
			dieNicely("user already have a password");
		
		$type = $this->determineType($username);

	}
	
	function updatePassword($username, $password, $newpassword)
    {
		if ($this->userExists($username) == false)
			return false;
		$type = $this->determineType($username);
		
		if ($type == "C")
			$this->db->update("ClientCard", array("clientPassword"=>$newpassword), array("clientCardNumber"=>$username, "password"=>$password));

		if ($type == "E" || $type == "M")
			$this->db->update("Employee_login", array("employeeLoginPassword"=>$newpassword), array("employeeId"=>$username, "employeeLoginPassword"=>$password) );

		return true;
    }

	
	function userExists($username) {
		$result = $this->db->get_where("Password",array("username"=>$username));
		if ($result->num_rows() == 1)
			return true;
		else
			return false;
	}
	
	// false = doesn'T exists, C = client, E = clerk, M = manager	
	function determineType($username) {
		$result = $this->db->get_where("Password",array("username"=>$username));
		if ($result->num_rows() == 1)
			return $result->row(0)->type;
		else
			return 0;	
	}
}