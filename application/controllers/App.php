<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {

    public function index() {

        $this->load->model("App_model","app");
        
        $unidades = $this->app->getUnidades();
        
        $data_header = array(
            'title'=>'Landing Convenios'
        );

        $data['unidades'] = $unidades;

        $this->parser->parse('template/header',$data_header);
        $this->load->view('home',$data);
        $this->load->view('template/footer');

    }
    
    public function guardarFormulario() {
        
        $this->load->library('user_agent');        
        $this->load->model("Registro_model","registro");
        
        $nombre  = trim($this->input->post("nombre"));
        $email   = trim($this->input->post("email"));
        $celular = trim($this->input->post("celular"));
        $unidad  = trim($this->input->post("unidades"));
        $area    = trim($this->input->post("areas"));
        $carrera = trim($this->input->post("carreras"));
        $consulta = trim($this->input->post("consulta"));
        
        if( $nombre!="" && $email!="" && $celular!="" && $unidad!="" && $area!="" && $consulta!="" ) {
            echo $this->registro->guardarFormulario();
        }else{
            echo "vacio";
        }
        
    }

}