<?php
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
    
    public function agregarUnidad($unidad,$estado_tipo_ingreso) {
        
        $estado_tipo_ingreso = ($estado_tipo_ingreso=="") ? 0:1;
        
        $this->db->select('*')
             ->from('unidades')
             ->where('nombre_unidad = "'.$unidad.'"');
        
        $cantidad = $this->db->count_all_results();       
        
        if( $cantidad==0 ) {
            
            $data = array(
                'nombre_unidad' => $unidad,
                'estado_tipo_ingreso' => $estado_tipo_ingreso
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
    
    public function editarUnidad($unidad,$new_unidad,$estado_tipo_ingreso) {
        
        $estado_tipo_ingreso = ($estado_tipo_ingreso=="") ? 0:1;

        $this->db->set('nombre_unidad', $new_unidad);
        $this->db->set('estado_tipo_ingreso', $estado_tipo_ingreso);
        $this->db->where('id_unidad', $unidad);
        
        if( $this->db->update('unidades') ) {
            return "ok";
        }else{
            return "error";
        }
        
    }

    public function getEstadoUnidadIngreso($id) {
        $query = $this->db->get_where('unidades', array('id_unidad' => $id));
        return $query->row();
    }
    
    public function editarEstadoUnidadIngreso($id) {

        $this->db->select("estado_tipo_ingreso")
             ->from("unidades")   
             ->where("id_unidad",$id);
        $query = $this->db->get();
        $estado_actual = $query->row('estado_tipo_ingreso');
        
        if( $estado_actual==0 ) {
            $this->db->set('estado_tipo_ingreso',1);
            $this->db->where('id_unidad',$id);
            $this->db->update('estado_tipo_ingreso');            
        }else{
            $this->db->set('estado_tipo_ingreso',0);
            $this->db->where('id_unidad',$id);
            $this->db->update('estado_tipo_ingreso');            
        }
        
        return "ok";

    }

}
