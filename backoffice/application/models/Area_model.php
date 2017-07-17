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
        
        $this->db->order_by('nombre_area', 'ASC');
        $query = $this->db->get('areas');
        return $query->result_array();
        
    }
    
    public function agregarArea($area) {
        
        $this->db->select('*')
             ->from('areas')
             ->where('nombre_area = "'.$area.'"');
        
        $cantidad = $this->db->count_all_results();       
        
        if( $cantidad==0 ) {
            
            $data = array(
                'nombre_area'  => $area
            );

            if( $this->db->insert('areas', $data) ) {
                return "ok";
            }else{
                return "error";
            }
            
        }else{
            return "ya existe";
        }      
        
    }   
    
    public function editarArea($area,$new_area) {

        $this->db->set('nombre_area', $new_area);
        $this->db->where('id_area', $area);
        
        if( $this->db->update('areas') ) {
            return "ok";
        }else{
            return "error";
        }                        
        
    }    

}
