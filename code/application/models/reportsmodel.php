<?php

class ReportsModel extends CI_Model {

       function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
	function run() {
$statement = <<<EOT
		select ifnull(branchLocation,'TOTAL') as location
		, ifnull(name,'TOTAL') as month, 
		sum(ifnull(FeesReceived,0)) as FeesReceived,
		sum(ifnull(InterestReceived,0)) as InterestReceived,
		sum(ifnull(PayGivenToEmployees,0)) as PayGivenToEmployees,
		sum(ifnull(FeesReceived,0)+ifnull(InterestReceived,0)+ifnull(PayGivenToEmployees,0))
		as Profit
		from profitability_report r
		join Branch b on b.branchId = r.branchId
		group by branchLocation, name with rollup;
EOT;
		return $this->db->query($statement);	
	}
}