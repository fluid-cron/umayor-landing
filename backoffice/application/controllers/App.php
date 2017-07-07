<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {
    
    public function index() {

        $data = array(
            'title'=>'Home'
        );
        
        $this->parser->parse('template/header',$data);
        $this->load->view('home');
        $this->load->view('template/footer');
        
    }
    
    public function agregar() {

        $data = array(
            'title'=>'Agregar Datos'
        );
        
        $this->parser->parse('template/header',$data);
        $this->load->view('agregar');
        $this->load->view('template/footer');
        
    }    
    
    public function editar() {

        $data = array(
            'title'=>'Editar Datos'
        );
        
        $this->parser->parse('template/header',$data);
        $this->load->view('editar');
        $this->load->view('template/footer');
        
    }        
    
}
