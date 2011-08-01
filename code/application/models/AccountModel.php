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
    	if ($AccountNumber == "*")
    	        $query = $this->db->get('Account');
		else
    			$query = $this->db->get_where('Account',array($this->id => $AccountNumber));
        return $query->result();
    }

    function insert($Type,$Balance,$Option,$Branch,$Rate,$Plan,$CreditLimit,$Level)
    {
   	    $this->load->helper('date');

    	$record = array(
	      	$this->type => $Type,
	        $this->balance => $Balance,
	        $this->createdate => date('Y-m-d H:i:s', now()),
	        $this->option => $Option,
	        $this->branch => $Branch,
	        $this->rate => $Rate,
	        $this->plan => $Plan,
	        $this->creditlimit => $CreditLimit,
	        $this->level => $Level );

        $this->db->insert('Account', $record);
       	$id = $this->db->insert_id();
       	return $this->select($id);
    }

    function update($AccountNumber,$Type,$Option,$Branch,$Rate,$Plan,$CreditLimit,$Level,$Balance)
    {
    	
    	$record = array(
	      	$this->type => $Type,
	        $this->option => $Option,
	        $this->branch => $Branch,
	        $this->rate => $Rate,
	        $this->plan => $Plan,
	        $this->creditlimit => $CreditLimit,
	        $this->level => $Level,
	        $this->balance => $Balance);
        $this->db->update('Account', $record, array($this->id => $AccountNumber ));
       	return $this->select($AccountNumber);
    }
    
     function delete($AccountNumber)
    {
        $this->db->delete('Account', array($this->id => $AccountNumber));
    }

}