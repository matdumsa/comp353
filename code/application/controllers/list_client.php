<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class List_Client extends CI_Controller {

	public function index()
	{
		
		$this->load->database();
		$this->load->library('table');
		$query = $this->db->query("select * from Client");
		echo $this->table->generate($query);

	}
	
	public function get_all_client($param1, $param2, $param3) {
	
		$data = array("param1" => $param1, "param2" => $param2, "param3" => $param3);
		$this->load->view('welcome_param', $data);

	}
}
