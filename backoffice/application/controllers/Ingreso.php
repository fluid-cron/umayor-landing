<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ingreso extends CI_Controller {
    
    public function listar() {
        
       if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {                              
            
            $q = $this->input->get("q");
            
            $this->load->library('pagination');
            $this->load->model('Ingreso_model','ingreso');
            
            $total_row = $this->ingreso->record_count($q);           
           
            $data_header["title"] = "Ingresos";
            
            $config["base_url"]         = base_url() . "/ingreso/listar/";
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
            if($this->uri->segment(3)) {
                $page = ($this->uri->segment(3));
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

            $data["ingresos"]   = $this->ingreso->fetch_data($config["per_page"],$page,trim($q));            
            $str_links           = $this->pagination->create_links();            
            $data["links"]       = explode('&nbsp;',$str_links ); 
            $data["q"]           = $q;
            $data["add"]         = $add;            
            
            $this->load->view('header',$data_header);
            $this->load->view('ingreso/ingreso',$data);
            $this->load->view('footer');

        } else {
            redirect("login");
        }   
        
    }
    
    public function agregarIngreso() {
        
        $this->load->model('Ingreso_model','ingreso');
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $ingreso  = $this->input->post("nombre");
            
            $this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');
            
            $data_header["title"] = "Agregar Ingreso";   
            
            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('ingreso/agregar');
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->ingreso->agregarIngreso($ingreso);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('ingreso/agregar_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('ingreso/agregar_error');
                    $this->load->view('footer');                    
                    
                }else if($result=="ya existe") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('ingreso/agregar_ingreso_ya_existe');
                    $this->load->view('footer');                      
                    
                }                                
                
            }

        }else{
            redirect('login');
        }
        
    }

    public function editarIngreso() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
            
            $this->load->model('Ingreso_model','ingreso');
        
            $ingreso  = $this->input->post("ingreso");
            $new_ingreso = $this->input->post("new_nombre");
            
            $this->form_validation->set_rules('ingreso', 'Ingreso', 'trim|required');
            $this->form_validation->set_rules('new_nombre', 'nuevo nombre', 'trim|required');
            
            $data_header["title"] = "Editar Ingreso";  
            
            $data["ingresos"] = $this->ingreso->getInfo();           

            if ($this->form_validation->run() === false) {

                $this->load->view('header',$data_header);
                $this->load->view('ingreso/editar',$data);
                $this->load->view('footer');            
            
            } else {
                
                $result = $this->ingreso->editarIngreso($ingreso,$new_ingreso);
                
                if($result=="ok") {
                
                    $this->load->view('header',$data_header);
                    $this->load->view('ingreso/editar_success');
                    $this->load->view('footer');
                
                }else if($result=="error") {
                    
                    $this->load->view('header',$data_header);
                    $this->load->view('ingreso/editar_error');
                    $this->load->view('footer');                    
                    
                }                              
                
            }

        }else{
            redirect('login');
        }
        
    }
       
}