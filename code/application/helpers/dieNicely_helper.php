<?php

function dieNicely($message, $reason = null) {
	print json_encode(array("error"=>"true", "msg" => $message, "reason" => $reason));
	exit();
}

?>