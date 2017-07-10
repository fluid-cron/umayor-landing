<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        
    }
    
    public function editarEstadoOpciones() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $this->load->model('Opcion_model','opcion');

            $id = $this->input->post("id");

            if( $id!="" ) {
               $data = $this->opcion->editarEstadoOpciones($id);
               echo $data;
            }else{
                echo "err";
            }

        }else{
            echo "err";
        }
        
    }       
    
}
