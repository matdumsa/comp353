<?php

$type = 'manager'; // can be client, clerk, manager

switch ($type) {
    case "client":
	?>
		<li><a href="transactions/view">Accounts</a></li>	
		<li><a href="transactions/view">Transactions</a></li>	
	<?php
        break;
    case "clerk":
	?>
		<li><a href="transactions/view">Clients</a></li>	
		<li><a href="transactions/view">Account</a></li>	
	<?php
        break;
    case "manager":
	?>
		<li><a href="transactions/view">Clients</a></li>	
		<li><a href="transactions/view">Account</a></li>	
		<li><a href="transactions/view">Employees</a></li>	
	<?php
        break;
}
?>

		<li><a href="transactions/view">My information</a></li>	
