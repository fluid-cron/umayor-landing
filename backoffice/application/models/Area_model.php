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
class Area_model extends CI_Model {
    
    public $id_area;
    public $nombre_area;
    public $estado;
    
    public function getAll() {
        
        $query = $this->db->get('areas');
        return $query->result_array();
        
    }

}
