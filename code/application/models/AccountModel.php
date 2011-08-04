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

	function transferMoney($amount, $from, $to) {
	
		$from = $this->select($from);
		$from = $from[0];
		$to = $this->select($to);
		$to = $to[0];
		
		$from->accountBalance 	= $from->accountBalance - $amount;
		$to->accountBalance 	= $to->accountBalance + $amount;
		
		$transaction_from = array("transactionType" => "TRANSFER", "transactionAmount" => -1*$amount, "accountNumber" => $from->accountNumber, "transactionFees" => 0, "transactionDescription" => "Internet transfer, money leaving");
		$transaction_to = array("transactionType" => "TRANSFER", "transactionAmount" => $amount, "accountNumber" => $to->accountNumber, "transactionFees" => 0, "transactionDescription" => "Internet transfer, money arriving");
		
		$this->db->insert('Transaction', $transaction_from);
		$this->db->insert('Transaction', $transaction_to);

        $this->db->update('Account', $from, array($this->id => $from->accountNumber ));
        $this->db->update('Account', $to, array($this->id => $to->accountNumber ));
        
        return true;
	
	}
	
	  function deposit($AccountNumber,$Amount)
    {
    	$account = $this->select($AccountNumber);
    	$account = $account[0];
    	$account->accountBalance = $account->accountBalance + $Amount;
    	$transaction = array("transactionType" => "DEPOSIT", "transactionAmount" => $Amount, "accountNumber" => $account->accountNumber, "transactionFees" => 0, "transactionDescription" => "Internet Deposit");
    	$this->db->insert('Transaction', $transaction);
    	$this->db->update('Account', $account, array($this->id => $account->accountNumber ));

    }
    
      function withdraw($AccountNumber,$Amount)
    {
     $account = $this->select($AccountNumber);
     $account = $account[0];
     if ($account->accountBalance >= (double) $Amount)
     {
      $account->accountBalance 	= $account->accountBalance - $Amount;
    $transaction = array("transactionType" => "WITHDRAW", "transactionAmount" => -1*$Amount, "accountNumber" => $account->accountNumber, "transactionFees" => 0, "transactionDescription" => "Internet Withdraw");
    	$this->db->insert('Transaction', $transaction);
    	$this->db->update('Account', $account, array($this->id => $account->accountNumber ));
    	return true;
     }
     else
     return false;
    }


}