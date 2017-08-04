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
        
        $this->db->order_by('nombre_unidad', 'ASC');
        $query = $this->db->get('unidades');
        return $query->result_array();
        
    }
    
    public function agregarUnidad($unidad) {
        
        $this->db->select('*')
             ->from('unidades')
             ->where('nombre_unidad = "'.$unidad.'"');
        
        $cantidad = $this->db->count_all_results();       
        
        if( $cantidad==0 ) {
            
            $data = array(
                'nombre_unidad'  => $unidad
            );

            if( $this->db->insert('unidades', $data) ) {
                return "ok";
            }else{
                return "error";
            }
            
        }else{
            return "ya existe";
        }      
        
    } 
    
    public function editarUnidad($unidad,$new_unidad) {

        $this->db->set('nombre_unidad', $new_unidad);
        $this->db->where('id_unidad', $unidad);
        
        if( $this->db->update('unidades') ) {
            return "ok";
        }else{
            return "error";
        }                        
        
    }

}
