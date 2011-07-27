<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MyInfo extends CI_Controller {


	public function index() {
		$this->load->model("User");
		$myinfo = $this->User->getMyInformation();
		if ($myinfo["type"] == "client")
			$this->load->view("myinfo_client", $myinfo);
		else
			$this->load->view("myinfo_employee", $myinfo);

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */