<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of unidad_model
 *
 * @author cronstudio_manuel
 */
class Unidad_model extends CI_Model {
    
    public $id_unidad;
    public $nombre_unidad;
    public $estado;
    
    public function getAll() {
        
        $query = $this->db->get('unidades');
        return $query->result_array();
        
    }

}
