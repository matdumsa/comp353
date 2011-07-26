<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Session extends CI_Controller {

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


	public function login() {
		$this->load->library('session');
		$this->session->set_userdata(array("loggedIn" => true));
		$this->session->set_userdata(array("type" => "client"));
		
		print json_encode(array("loginError"=>"false"));
	}
	
	public function logout() {
		$this->load->library('session');
		$this->session->sess_destroy();
		
		print json_encode(array("status" => "loggedOut", "message" => "You have successfully logged out"));

	}
	
	public function info() {
		$this->load->library('session');
		hasRight("view_client", $this->session);
		print json_encode(array("name"=>"God", "username"=>"god", "role"=>"3"));
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */