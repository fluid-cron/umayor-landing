<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {
    
    public function index() {

        $data = array(
            'title'=>'My Blog Title'
        );
        
        $this->parser->parse('template/header',$data);
        $this->load->view('home');
        $this->load->view('template/footer');
        
    }
    
}
