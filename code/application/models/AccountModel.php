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
		protected $ClienId = "clientId";
		protected $accountId = "accountId";

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
    
     function getAccountsByUserId($userId)
    {
    $sql = 'SELECT * FROM Account join Clients_own_account coa on coa.accountId = Account.accountNumber where coa.clientId =' . $userId;
    $query = $this->db->query($sql);
    // Fetch the result array from the result object and return it
    return $query->result();	
    }

    function getUserTransaction ($userId)
    {

    $sql = 'SELECT * FROM Transaction t where t.accountNumber in (SELECT Account.accountNumber FROM Account join Clients_own_account coa on coa.accountId = Account.accountNumber where coa.clientId =' . $userId . ' )';
    $query = $this->db->query($sql);
    // Fetch the result array from the result object and return it
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
    
    function associate($account_id, $client_id) {
		$record = array("clientId" => $client_id, "accountId" => $account_id);
        $this->db->insert('Clients_own_account', $record);
    }
    
    function dissociate($account_id, $client_id) {
		$record = array("clientId" => $client_id, "accountId" => $account_id);
        $this->db->delete('Account', $record);
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