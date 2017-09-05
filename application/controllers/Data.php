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
        
        $id_unidad = $this->input->post("id_unidad");
        $id_area   = $this->input->post("id_area");
        
        if( (isset($id_unidad) && $id_unidad!="") && ( isset($id_area) && $id_area!="" ) ) {
            
            $this->load->model("App_model","app");
            $carreras = $this->app->getCarreras($id_unidad,$id_area);

            $this->output
                 ->set_content_type('application/json')
                 ->set_output(json_encode($carreras));  
            
        }else{
            echo "empty";
        }
        
    }

    public function check() {
        
        $this->load->model("Registro_model","registro");       
        echo $this->registro->check();
        
    }
    
    function getEstadoUnidadIngreso() {
        
        $this->load->model('App_model','app');

        $id = $this->input->post("id");

        if( $id!="" ) {
           $data = $this->app->getEstadoUnidadIngreso($id);
        $this->output
             ->set_content_type('application/json')
             ->set_output(json_encode($data));  
        }else{
            echo "err";
        }   
             
    }    
    
}
