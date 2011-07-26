<?php

class EmplyeeModel extends CI_Model {


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
    			$query = $this->db->get_where('Employee',array($id => $EmployeeId));
        return $query->result();
    }

    function insert($Address,$Title,$Name,$StartDate,$HourlySalary,$BranchId)
    {
    
    	$record = array(
	      	$address => $Address,
	        $title => $Title,
	        $startdate => date(),
	        $name => $Name,
	        $hourlysalary => $HourlySalary,
	        $branchid => $BranchId );

        $this->db->insert('Employee', $record);
       	return $this->db->insertid();
    }

    function update($EmployeeId,$Address,$Title,$Name,$HourlySalary,$BranchId)
    {
    	$record = array(
	      	$address => $Address,
	        $title => $Title,
	        $name => $Name,
	        $hourlysalary => $HourlySalary,
	        $branchid => $BranchId);
        $this->db->update('Employee', $record, array($id => $EmployeeId ));
    }
    
     function delete($EmployeeId)
    {
        $this->db->delete('Employee', array($id => $EmployeeId));
    }

}