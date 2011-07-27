<?php

$type = 'manager'; // can be client, clerk, manager

switch ($type) {
    case "client":
	?>
		<li><a href="account/mine">Accounts</a></li>	
		<li><a href="transactions/mine">Transactions</a></li>	
	<?php
        break;
    case "clerk":
	?>
		<li><a href="client/view">Clients</a></li>	
		<li><a href="account/view">Account</a></li>	
	<?php
        break;
    case "manager":
	?>
		<li><a href="client/view">Clients</a></li>	
		<li><a href="account/view">Account</a></li>	
		<li><a href="employee/view">Employees</a></li>	
	<?php
        break;
}
?>

		<li><a href="myinfo">My information</a></li>	
