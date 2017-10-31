<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {
    
    public function index() {
        
        $this->load->library('user_agent');   
          
        $origen = "desktop";
        if ($this->agent->is_mobile()) {
            $origen = "mobile";
        }

        $idmedio = $this->uri->segment(1);

        $this->load->model("App_model","app");
        
        $unidades = $this->app->getUnidades();
        $tipos_ingresos = $this->app->getTiposIngreso();    
        $nombre_medio = @$this->app->getNombreMedioById($idmedio);

        if( $idmedio=="" ) {
            $idmedio = "10000";
        }else{

            if( $nombre_medio=="" ) {
                $idmedio = "";
            }

        }

        $data_header = array(
            'title'=>'Landing Convenios',
            'origen'=> $origen
        );

        $data['unidades'] = $unidades;
        $data['tipos_ingresos'] = $tipos_ingresos;
        $data['idmedio'] = $idmedio;
        $data['nombre_medio'] = $nombre_medio;

        $this->parser->parse('template/header',$data_header);
        $this->load->view('home',$data);
        $this->load->view('template/footer');

    }
    
    public function guardarFormulario() {
        
        $this->load->library('user_agent');        
        $this->load->model("Registro_model","registro");
        
        $nombre   = trim($this->input->post("nombre"));
        $email    = trim($this->input->post("email"));
        $celular  = trim($this->input->post("celular"));
        $unidad   = trim($this->input->post("unidades"));
        $area     = trim($this->input->post("areas"));
        $carrera  = trim($this->input->post("carreras"));
        $consulta = trim($this->input->post("consulta"));
        
        if( $nombre!="" && $email!="" && $celular!="" && $unidad!="" && $area!="" && $consulta!="" ) {
            echo $this->registro->guardarFormulario();
        }else{
            echo "vacio";
        }
        
    }

    public function gracias() {

        $this->load->library('user_agent');   
        
        $origen = "desktop";
        if ($this->agent->is_mobile()) {
            $origen = "mobile";
        }

        $data_header = array(
            'title'=>'Landing Convenios',
            'origen'=> $origen
        );

        $this->parser->parse('template/header',$data_header);
        $this->load->view('gracias');
        $this->load->view('template/footer');        
    }

}