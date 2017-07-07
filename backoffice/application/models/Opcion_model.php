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
class Opcion_model extends CI_Model {
    
    public $id;
    public $id_unidad;
    public $id_area;
    public $id_carrera;
    public $estado;
    
    public function getAll() {

        //$this->db->select('U.nombre AS nombre_unidad, A.nombre AS nombre_area, C.nombre AS nombre_carrera')
        $this->db->select('U.id_unidad AS id_unidad,U.nombre AS nombre_unidad, A.id_area AS id_area, A.nombre AS nombre_unidad, C.id_carrera AS id_carrera, C.nombre AS nombre_unidad')                
            ->from('unidades AS U, areas AS A, carreras_cursos_programas as C, opciones AS O')
            ->where('O.id_unidad = U.id_unidad')
            ->where('O.id_area = A.id_area')
            ->where('O.id_carrera = C.id_carrera');        
        
        $query = $this->db->get();
        return $query->result_array();         
        
    }

}
