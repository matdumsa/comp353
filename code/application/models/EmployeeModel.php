<?php

class EmployeeModel extends CI_Model {


		protected $id = "employeeId";
		protected $title = "employeeTitle";
		protected $address = "employeeAddress";
		protected $startdate = "employeeStartDate";
		protected $name = "employeeName";
		protected $hourlysalary = "employeeHourlySalary";
		protected $branchid = "employeeBranchId";

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($EmployeeId = "*")
    {
    	if ($EmployeeId == "*")
    	        $query = $this->db->get('Employee');
		else
    			$query = $this->db->get_where('Employee',array($this->id => $EmployeeId));
        return $query->result();
    }

    function insert($Address,$Title,$Name,$HourlySalary,$BranchId)
    {

	    $this->load->helper('date');
    
    	$record = array(
	      	$this->address => $Address,
	        $this->title => $Title,
	        $this->startdate => date('Y-m-d H:i:s', now()),
	        $this->name => $Name,
	        $this->hourlysalary => $HourlySalary,
	        $this->branchid => $BranchId );

        $this->db->insert('Employee', $record);
       	$id = $this->db->insert_id();
       	return $this->select($id);
    }

    function update($EmployeeId,$Address,$Title,$Name,$HourlySalary,$BranchId)
    {
    	$record = array(
	      	$this->address => $Address,
	        $this->title => $Title,
	        $this->name => $Name,
	        $this->hourlysalary => $HourlySalary,
	        $this->branchid => $BranchId);
        $this->db->update('Employee', $record, array($this->id => $EmployeeId ));
        return $this->select($EmployeeId);
        
    }
    
     function delete($EmployeeId)
    {
        $this->db->delete('Employee', array($this->id => $EmployeeId));
    }

}