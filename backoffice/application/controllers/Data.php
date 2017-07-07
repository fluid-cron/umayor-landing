<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        return 0;
    }
    
    public function obtenerUnidades() {
        
        $this->load->model('Unidad_model','unidad');

        $data = $this->unidad->getAll();
        
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($data));
        
    }

    public function obtenerAreas() {
        
        $this->load->model('Area_model','area');

        $data = $this->area->getAll();
        
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($data));
        
    }
    
    public function obtenerCarreras() {
        
        $this->load->model('Carrera_model','carrera');

        $data = $this->carrera->getAll();
        
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($data));
        
    }
    
    public function obtenerOpciones() {
        
        $this->load->model('Opcion_model','opcion');
        
        $data = $this->opcion->getAll();
        
        //print_r($data);
        
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($data));
                
    }    
    
    public function guardarOpciones() {
        
        $this->load->model('Opcion_model','opcion');
        
        echo "dasd";
    }
    
}
