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
class Carrera_model extends CI_Model {
    
    public $id_carrera;
    public $nombre_carrera;
    public $estado;
    
    public function getAll() {
        
        $this->db->order_by('nombre_carrera', 'ASC');
        $query = $this->db->get('carreras_cursos_programas');
             
        return $query->result_array();
        
    }
    
    public function agregarCarrera($carrera) {
        
        $this->db->select('*')
             ->from('carreras_cursos_programas')
             ->where('nombre_carrera = "'.$carrera.'"');
        
        $cantidad = $this->db->count_all_results();       
        
        if( $cantidad==0 ) {
            
            $data = array(
                'nombre_carrera'  => $carrera
            );

            if( $this->db->insert('carreras_cursos_programas', $data) ) {
                return "ok";
            }else{
                return "error";
            }
            
        }else{
            return "ya existe";
        }      
        
    }    

    public function editarCarrera($carrera,$new_carrera) {

        $this->db->set('nombre_carrera', $new_carrera);
        $this->db->where('id_carrera', $carrera);
        
        if( $this->db->update('carreras_cursos_programas') ) {
            return "ok";
        }else{
            return "error";
        }                        
        
    }        

}
