<?php 


function hasRight($right, $session) {
	if (! ($session->userdata('loggedIn') == true))
		dieNicely("NOT LOGGED", "notLoggedIn");
	if ($session->userdata('type') == "client")
		return true;
	
	return false;
}

?>