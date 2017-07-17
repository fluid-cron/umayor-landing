<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {
    
    public function index() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Opcion_model','opcion');
        
            $data_header["title"] = "Home";                        
            
            $data["opciones"] = $this->opcion->getAll();
            
            $this->load->view('header',$data_header);
            $this->load->view('home',$data);
            $this->load->view('footer');

        } else {
            redirect("login");
        }
        
    }
    
    public function opciones() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Opcion_model','opcion');
        
            $data_header["title"] = "Opciones";                        
            
            $data["opciones"] = $this->opcion->getAll();
            
            $this->load->view('header',$data_header);
            $this->load->view('opciones',$data);
            $this->load->view('footer');

        } else {
            redirect("login");
        }        
        
    }
    
    public function asignar() {
        
        $this->load->model('Opcion_model','opcion');
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Unidad_model','unidad');
            $this->load->model('Area_model','area');
            $this->load->model('Carrera_model','carrera');   
            
            $unidad  = $this->input->post("unidad");
            $area    = $this->input->post("area");
            $carrera = $this->input->post("carrera");            
            
            $this->form_validation->set_rules('unidad', 'Unidad', 'trim|required');
            
            $this->form_validation->set_rules('carrera', 'Carrera', 'trim');
            
            if( $carrera!="" ) {
                $this->form_validation->set_rules('area', 'Area', 'trim|required');
            }else{
                $this->form_validation->set_rules('area', 'Area', 'trim');
            }
            
            $data_header["title"] = "Asignar"; 
            
            if ($this->form_validation->run() === false) {

                $data["unidades"] = $this->unidad->getAll();
                $data["areas"]    = $this->area->getAll();
                $data["carreras"] = $this->carrera->getAll();

                $this->load->view('header',$data_header);
                $this->load->view('asignar/asignar',$data);
                $this->load->view('footer');
            
            }else{
                
                $result = $this->opcion->agregarOpcion($unidad, $area, $carrera);
                
                if($result=="ok"){
                
                    $this->load->view('header',$data_header);
                    $this->load->view('asignar/asignar_success');
                    $this->load->view('footer');
                
                }else if($result=="error"){
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('asignar/asignar_error');
                    $this->load->view('footer');                    
                    
                }else if($result=="ya existe") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('asignar/asignar_ya_existe');
                    $this->load->view('footer');                      
                    
                }
                
            }

        } else {
            redirect("login");
        }
        
    }
    
    public function agregarUnidad() {
        
        $this->load->model('Unidad_model','unidad');
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $unidad  = $this->input->post("unidad");
            
            $this->form_validation->set_rules('unidad', 'Unidad', 'trim|required');
            
            $data_header["title"] = "Agregar Unidad";   
            
            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('agregar/unidad/agregar_unidad');
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->unidad->agregarUnidad($unidad);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/unidad/agregar_unidad_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/unidad/agregar_unidad_error');
                    $this->load->view('footer');                    
                    
                }else if($result=="ya existe") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/unidad/agregar_unidad_ya_existe');
                    $this->load->view('footer');                      
                    
                }                                
                
            }

        }else{
            redirect('login');
        }
        
    }
    
    public function agregarArea() {
        
        $this->load->model('Area_model','area');
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $area  = $this->input->post("area");
            
            $this->form_validation->set_rules('area', 'Area', 'trim|required');
            
            $data_header["title"] = "Agregar Area";   
            
            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('agregar/area/agregar_area');
                $this->load->view('footer');            
            
            }else{
                
                $result = $this->area->agregarArea($area);
                
                if($result=="ok"){
                
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/area/agregar_area_success');
                    $this->load->view('footer');
                
                }else if($result=="error"){
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/area/agregar_area_error');
                    $this->load->view('footer');                    
                    
                }else if($result=="ya existe") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/area/agregar_area_ya_existe');
                    $this->load->view('footer');                      
                    
                }                                
                
            }

        }else{
            redirect('login');
        }
        
    }
    
    public function agregarCarrera() {
        
        $this->load->model('Carrera_model','carrera');
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $carrera  = $this->input->post("carrera");
            
            $this->form_validation->set_rules('carrera', 'Carrera', 'trim|required');
            
            $data_header["title"] = "Agregar Carrera";   
            
            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('agregar/carrera/agregar_carrera');
                $this->load->view('footer');            
            
            }else{
                
                $result = $this->carrera->agregarCarrera($carrera);
                
                if($result=="ok"){
                
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/carrera/agregar_carrera_success');
                    $this->load->view('footer');
                
                }else if($result=="error"){
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/carrera/agregar_carrera_error');
                    $this->load->view('footer');                    
                    
                }else if($result=="ya existe") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/carrera/agregar_carrera_ya_existe');
                    $this->load->view('footer');                      
                    
                }                                
                
            }

        }else{
            redirect('login');
        }
        
    }
    
    public function editarUnidad() {                
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Unidad_model','unidad');
        
            $unidad  = $this->input->post("unidad");
            $new_unidad = $this->input->post("new_unidad");
            
            $this->form_validation->set_rules('unidad', 'Unidad', 'trim|required');
            
            $data_header["title"] = "Editar Unidad";  
            
            $data["unidades"] = $this->unidad->getAll();           

            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('editar/unidad/editar',$data);
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->unidad->agregarUnidad($unidad);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/unidad/agregar_unidad_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/unidad/agregar_unidad_error');
                    $this->load->view('footer');                    
                    
                }else if($result=="ya existe") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('agregar/unidad/agregar_unidad_ya_existe');
                    $this->load->view('footer');                      
                    
                }                                
                
            }

        }else{
            redirect('login');
        }
        
    }    
       
}