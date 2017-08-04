<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {
    
    public function index() {
        
       if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {          
            
            $q = $this->input->get("q");
            
            $fecha_desde = $this->input->get("desde");
            $fecha_hasta = $this->input->get("hasta");
            
            if( $fecha_desde!="" && $fecha_hasta!="" ) {
                
                $fecha_desde_partes = explode("/", $fecha_desde);
                $mysql_fecha_desde = $fecha_desde_partes[2]."-".$fecha_desde_partes[1]."-".$fecha_desde_partes[0];

                $fecha_hasta_partes = explode("/", $fecha_hasta);
                $mysql_fecha_hasta = $fecha_hasta_partes[2]."-".$fecha_hasta_partes[1]."-".$fecha_hasta_partes[0];
                
            }else{
                $fecha_desde = "";
                $fecha_hasta = "";
                $mysql_fecha_desde = "";
                $mysql_fecha_hasta = "";
            }                          
            
            $this->load->library('pagination');
            $this->load->model('Registro_model','registro');

            $total_row                  = $this->registro->record_count($q,$mysql_fecha_desde,$mysql_fecha_hasta);
            
            $config                     = array();
            $config["base_url"]         = base_url() . "/";
            $config['suffix']           = '?'.http_build_query($_GET,'', "&");            
            $config["total_rows"]       = $total_row;
            $config["per_page"]         = 5;
            $config['num_links']        = 2;
            $config['use_page_numbers'] = TRUE;
            $config['next_link']        = '&raquo;';
            $config['prev_link']        = '&laquo;';
            $config['first_tag_open']   = '<li class="prev page">';
            $config['first_tag_close']  = '</li>';
            $config['last_tag_open']    = '<li class="next page">';
            $config['last_tag_close']   = '</li>';
            $config['next_tag_open']    = '<li class="next page">';
            $config['next_tag_close']   = '</li>';
            $config['prev_tag_open']    = '<li class="prev page">';
            $config['prev_tag_close']   = '</li>';
            $config['cur_tag_open']     = '<li class="active"><a href="">';
            $config['cur_tag_close']    = '</a></li>';
            $config['num_tag_open']     = '<li class="page">';
            $config['num_tag_close']    = '</li>';            
            $config['first_url']        = $config['base_url'] . $config['suffix'];
                        
            $this->pagination->initialize($config);
            
            if($this->uri->segment(1)) {
                $page = ($this->uri->segment(1));
            }else{
                $page = 1;
            }

            $add = "";
            foreach($_GET as $k=>$v) {
                $data[] = "$k=$v";
            }
            if( isset($data) && is_array($data)) {
                $add = "?".implode("&",$data);
            }

            $data["registros"]   = $this->registro->fetch_data($config["per_page"],$page,trim($q),trim($mysql_fecha_desde),trim($mysql_fecha_hasta));            
            $str_links           = $this->pagination->create_links();            
            $data["links"]       = explode('&nbsp;',$str_links ); 
            $data["q"]           = $q;
            $data["fecha_desde"] = $fecha_desde;
            $data["fecha_hasta"] = $fecha_hasta;
            $data["add"]         = $add;
            
            $data_header["title"] = "Registros";                                    
            
            $this->load->view('header',$data_header);
            $this->load->view('home',$data);
            $this->load->view('footer');

        } else {
            redirect("login");
        }   
        
    }
    
    public function opciones() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $q = $this->input->get("q");
            
            $this->load->library('pagination');
            $this->load->model('Opcion_model','opcion');

            $total_row                  = $this->opcion->record_count($q);
            
            $config = array();
            $config["base_url"]         = base_url() . "/opciones/";
            $config['suffix']           = '?'.http_build_query($_GET,'', "&");            
            $config["total_rows"]       = $total_row;
            $config["per_page"]         = 10;
            $config['num_links']        = 2;
            $config['use_page_numbers'] = TRUE;
            $config['next_link']        = '&raquo;';
            $config['prev_link']        = '&laquo;';
            $config['first_tag_open']   = '<li class="prev page">';
            $config['first_tag_close']  = '</li>';
            $config['last_tag_open']    = '<li class="next page">';
            $config['last_tag_close']   = '</li>';
            $config['next_tag_open']    = '<li class="next page">';
            $config['next_tag_close']   = '</li>';
            $config['prev_tag_open']    = '<li class="prev page">';
            $config['prev_tag_close']   = '</li>';
            $config['cur_tag_open']     = '<li class="active"><a href="">';
            $config['cur_tag_close']    = '</a></li>';
            $config['num_tag_open']     = '<li class="page">';
            $config['num_tag_close']    = '</li>';            
            $config['first_url']        = $config['base_url'] . $config['suffix'];
                        
            $this->pagination->initialize($config);
            
            if($this->uri->segment(2)) {
                $page = ($this->uri->segment(2));
            }else{
                $page = 1;
            }

            $data["opciones"] = $this->opcion->fetch_data($config["per_page"], $page,$q);            
            $str_links        = $this->pagination->create_links();            
            $data["links"]    = explode('&nbsp;',$str_links ); 
            $data["q"]        = $q;
            
            $data_header["title"] = "Opciones";                                    
            
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
            $this->form_validation->set_rules('area', 'Area', 'trim|required');
            
            $this->form_validation->set_rules('carrera', 'Carrera', 'trim');
            
            /*if( $carrera!="" ) {
                $this->form_validation->set_rules('area', 'Area', 'trim|required');
            }else{
                $this->form_validation->set_rules('area', 'Area', 'trim');
            }*/
            
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
            $this->form_validation->set_rules('new_unidad', 'nuevo nombre', 'trim|required');
            
            $data_header["title"] = "Editar Unidad";  
            
            $data["unidades"] = $this->unidad->getAll();           

            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('editar/unidad/editar',$data);
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->unidad->editarUnidad($unidad,$new_unidad);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('editar/unidad/editar_unidad_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('editar/unidad/editar_unidad_error');
                    $this->load->view('footer');                    
                    
                }                              
                
            }

        }else{
            redirect('login');
        }
        
    }    
    
    public function editarArea() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Area_model','area');
        
            $area  = $this->input->post("area");
            $new_area = $this->input->post("new_area");
            
            $this->form_validation->set_rules('area', 'Area', 'trim|required');
            $this->form_validation->set_rules('new_area', 'nuevo nombre', 'trim|required');
            
            $data_header["title"] = "Editar Area";  
            
            $data["areas"] = $this->area->getAll();           

            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('editar/area/editar',$data);
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->area->editarArea($area,$new_area);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('editar/area/editar_area_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('editar/area/editar_area_error');
                    $this->load->view('footer');                    
                    
                }                              
                
            }

        }else{
            redirect('login');
        }
        
    }    
    
    public function editarCarrera() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Carrera_model','carrera');
        
            $carrera  = $this->input->post("carrera");
            $new_carrera = $this->input->post("new_carrera");
            
            $this->form_validation->set_rules('carrera', 'Carrera', 'trim|required');
            $this->form_validation->set_rules('new_carrera', 'nuevo nombre', 'trim|required');
            
            $data_header["title"] = "Editar Carrera";  
            
            $data["carreras"] = $this->carrera->getAll();           

            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('editar/carrera/editar',$data);
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->carrera->editarCarrera($carrera,$new_carrera);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('editar/carrera/editar_carrera_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('editar/carrera/editar_carrera_error');
                    $this->load->view('footer');                    
                    
                }                              
                
            }

        }else{
            redirect('login');
        }
        
    }        
       
}