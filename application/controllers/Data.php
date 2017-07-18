<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        
    }
    
    public function getAreas() {
        
        $id = $this->input->post("id");
   
        if( isset($id) && $id!="" ){
            
            $this->load->model("App_model","app");
            $areas = $this->app->getAreas($id);
            
            $this->output
                 ->set_content_type('application/json')
                 ->set_output(json_encode($areas));            
            
        }else{
            echo "empty";
        }       
        
    }
    
    public function getCarreras() {
        
        $id = $this->input->post("id");
        
        if( isset($id) && $id!="" ){
            
            $this->load->model("App_model","app");
            $carreras = $this->app->getCarreras($id);

            $this->output
                 ->set_content_type('application/json')
                 ->set_output(json_encode($carreras));  
            
        }else{
            echo "empty";
        }
        
    }    
    
}
