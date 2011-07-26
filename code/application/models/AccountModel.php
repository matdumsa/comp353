<?php

class AccountModel extends CI_Model {


		protected $id = "accountNumber";
		protected $type = "accountType";
		protected $balance = "accountBalance";
		protected $createdate = "accountCreationDate";
		protected $option = "accountOption";
		protected $branch = "accountBranchId";
		protected $rate = "accountRateId";
		protected $plan = "accountPlanId";
		protected $creditlimit = "accountCreditLimit";
		protected $level = "accountLevel";

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function select($AccountNumber = "*")
    {
    	if ($EmployeeId == "*")
    	        $query = $this->db->get('Account');
		else
    			$query = $this->db->get_where('Account',array($id => $AccountNumber));
        return $query->result();
    }

    function insert($Type,$Balance,$Option,$Branch,$Rate,$Plan,$CreditLimit,$Level)
    {
    
    	$record = array(
	      	$type => $Type,
	        $balance => $Balance,
	        $createdate => date(),
	        $option => $Option,
	        $branch => $Branch,
	        $rate => $Rate,
	        $plan => $Plan,
	        $creditlimit => $CreditLimit,
	        $level => $Level );

        $this->db->insert('Account', $record);
       	return $this->db->insertid();
    }

    function update($AccountNumber,$Type,$Option,$Branch,$Rate,$Plan,$CreditLimit,$Level)
    {
    	
    	$record = array(
	      	$type => $Type,
	        $option => $Option,
	        $branch => $Branch,
	        $rate => $Rate,
	        $plan => $Plan,
	        $creditlimit => $CreditLimit,
	        $level => $Level );
        $this->db->update('Account', $record, array($id => $AccountNumber ));
    }
    
     function delete($AccountNumber)
    {
        $this->db->delete('Account', array($id => $AccountNumber));
    }

}