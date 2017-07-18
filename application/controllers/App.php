<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {

    public function index() {

        $this->load->model("App_model","app");
        
        $unidades = $this->app->getUnidades();
        //$areas = $this->app->getAreas(1);
        //$carreras = $this->app->getCarreras(32);
        
        $data_header = array(
            'title'=>'Landing Convenios'
        );
        
        $data['unidades'] = $unidades;

        $this->parser->parse('template/header',$data_header);
        $this->load->view('home',$data);
        $this->load->view('template/footer');

    }

}