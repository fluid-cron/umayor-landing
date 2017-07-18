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
class App_model extends CI_Model { 
    
    public function getUnidades() {
        
        $this->db->select('u.id_unidad as id,u.nombre_unidad as nombre')
                 ->from('unidades AS u, opciones AS o')
                 ->where('u.id_unidad=o.id_unidad')
                 ->group_by('u.nombre_unidad')
                 ->order_by('u.nombre_unidad','asc');
                
        $query = $this->db->get();
        return $query->result_array();
        
    }
  
    public function getAreas($id) {

        $this->db->select('a.id_area as id,a.nombre_area as nombre')
                 ->from('umayor_convenios.opciones as o,umayor_convenios.areas as a')
                 ->where('o.id_unidad='.$id)
                 ->where('o.id_area=a.id_area')
                 ->group_by('a.nombre_area')
                 ->order_by('a.nombre_area','asc');

        $query = $this->db->get();
        return $query->result_array();

    }
    
    public function getCarreras($id) {

        $this->db->select('c.id_carrera as id,c.nombre_carrera as nombre')
                 ->from('umayor_convenios.opciones as o,umayor_convenios.carreras_cursos_programas as c')
                 ->where('o.id_area='.$id)
                 ->where('o.id_carrera=c.id_carrera')
                 ->group_by('c.nombre_carrera')
                 ->order_by('c.nombre_carrera','asc');

        $query = $this->db->get();
        return $query->result_array();

    }    

}