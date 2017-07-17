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

        $this->db->select('o.id,u.nombre_unidad as unidad , a.nombre_area as area, c.nombre_carrera as carrera, o.estado')
             //->from('umayor_convenios.opciones o, umayor_convenios.unidades u, umayor_convenios.areas a, umayor_convenios.carreras_cursos_programas c')
             //->where('o.id_unidad = u.id_unidad')
             //->where('o.id_area = a.id_area')
             //->where('o.id_carrera=c.id_carrera')
             ->from('umayor_convenios.opciones o')
             ->join('umayor_convenios.unidades u', 'o.id_unidad = u.id_unidad', 'left')
             ->join('umayor_convenios.areas a', 'o.id_area = a.id_area', 'left')
             ->join('umayor_convenios.carreras_cursos_programas c', 'o.id_carrera=c.id_carrera', 'left')
             ->order_by('id', 'DESC');
        
        $query = $this->db->get();
        return $query->result_array();         
        
    }

    public function fetch_data($limit, $page) {  
        
        $offset = ($page-1)*$limit;        
        $this->db->select('o.id,u.nombre_unidad as unidad , a.nombre_area as area, c.nombre_carrera as carrera, o.estado')
             ->from('umayor_convenios.opciones o')
             ->join('umayor_convenios.unidades u', 'o.id_unidad = u.id_unidad', 'left')
             ->join('umayor_convenios.areas a', 'o.id_area = a.id_area', 'left')
             ->join('umayor_convenios.carreras_cursos_programas c', 'o.id_carrera=c.id_carrera', 'left')
             ->limit($limit, $offset)
             ->order_by('id', 'DESC');
        $query = $this->db->get();
        return $query->result_array(); 
        
    }    
    
    public function record_count() {

        $this->db->select('o.id,u.nombre_unidad as unidad , a.nombre_area as area, c.nombre_carrera as carrera, o.estado')
             ->from('umayor_convenios.opciones o')
             ->join('umayor_convenios.unidades u', 'o.id_unidad = u.id_unidad', 'left')
             ->join('umayor_convenios.areas a', 'o.id_area = a.id_area', 'left')
             ->join('umayor_convenios.carreras_cursos_programas c', 'o.id_carrera=c.id_carrera', 'left')
             ->order_by('id', 'DESC');
        
        return $this->db->count_all_results();
        
    }
    
    public function editarEstadoOpciones($id) {

        $this->db->select("estado")
             ->from("opciones")   
             ->where("id",$id);
        $query = $this->db->get();
        $estado_actual = $query->row('estado');
        
        if( $estado_actual==0 ) {
            $this->db->set('estado',1);
            $this->db->where('id',$id);
            $this->db->update('opciones');            
        }else{
            $this->db->set('estado',0);
            $this->db->where('id',$id);
            $this->db->update('opciones');            
        }
        
        return "ok";

    }
    /*
     * @fixme se pueden crear combinaciones duplicadas
     */
    public function agregarOpcion($unidad, $area, $carrera) {
        
        if( $area=="" ) {
            $area = 0;
        }
        if( $carrera=="" ) {
            $carrera = 0;
        }
        
        $this->db->select('o.id')
             ->from('umayor_convenios.opciones o')
             ->where('o.id_unidad = '.$unidad)
             ->where('o.id_area = '.$area)
             ->where('o.id_carrera = '.$carrera);
        
        $cantidad = $this->db->count_all_results();       
        
        if( $cantidad==0 ) {
            
            $data = array(
                'id_unidad'  => $unidad,
                'id_area'    => $area,
                'id_carrera' => $carrera
            );

            if( $this->db->insert('opciones', $data) ) {
                return "ok";
            }else{
                return "error";
            }
            
        }else{
            return "ya existe";
        }      
        
    }
    
    

}
