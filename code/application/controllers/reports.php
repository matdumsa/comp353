<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reports extends CI_Controller {


	public function index() {
		$this->load->model("ReportsModel");
		$this->load->library('table');
		print $this->table->generate($this->ReportsModel->run()); 
	}
        
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */