<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of registro_model
 *
 * @author cronstudio_manuel
 */
class Registro_model extends CI_Model {
    
    public $nombre;
    public $email;
    public $celular;
    public $id_unidad;
    public $id_area;
    public $id_carrera;
    public $origen = "desktop";
    public $fecha;
    
    public function guardarFormulario() {
        
        if ($this->agent->is_mobile('iphone')) {
            $this->origen = "mobile";
        }
        
        $this->nombre     = $this->input->post("nombre");
        $this->email      = $this->input->post("email");
        $this->celular    = $this->input->post("celular");
        $this->id_unidad  = $this->input->post("unidades");
        $this->id_area    = $this->input->post("areas");
        $this->id_carrera = $this->input->post("carreras");        
        $this->fecha      = date("Y-m-d H:i:s");
        
        if( $this->db->insert('registros',$this) ) {
            return "ok";
        }else{
            return "error";
        }
        
    }

}
