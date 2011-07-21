<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class List_Client extends CI_Controller {

	public function index()
	{
		
		$this->load->database();
		$this->load->library('table');
		$query = $this->db->query("select * from Client");
		echo $this->table->generate($query);

	}
}
