<?php


switch ($type) {
    case "client":
	?>
		<li><a href="account/mine">Accounts</a></li>	
		<li><a href="transaction/view">Transactions</a></li>	
		<li><a href="myinfo">My information</a></li>	
	<?php
        break;
    case "clerk":
	?>
		<li><a href="client/view">Clients</a></li>	
		<li><a href="account/view">Account</a></li>	
		<li><a href="myinfo">My information</a></li>	
	<?php
        break;
    case "manager":
	?>
		<li><a href="client/view">Clients</a></li>	
		<li><a href="account/view">Account</a></li>	
		<li><a href="employee/view">Employees</a></li>	
		<li><a href="myinfo">My information</a></li>	
	<?php
        break;
	default:
		//Not logged in
	?>
		<li><a>Loggin Screen</a></li>
	<?php
}
?>

