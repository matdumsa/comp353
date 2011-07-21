<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	public function index()
	{
		$this->load->library('session');
		if ($this->session->userdata('loggedIn') == true) {
			$this->load->view("landing_loggedin");
		}
		else {
			$this->load->view("login.php");
		}
	}

	public function login() {
		$this->load->library('session');
		$this->session->set_userdata(array("loggedIn" => true));
		$this->index();
	}
	
	public function logout() {
		$this->load->library('session');
		$this->session->sess_destroy();
		$this->load->view("login.php");

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */