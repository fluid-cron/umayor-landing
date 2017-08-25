<?php
/**
 * Description of unidad_model
 *
 * @author cronstudio_manuel
 */
class Ingreso_model extends CI_Model {
    
    public $id;
    public $nombre;
    public $estado;
    
    public function getAll($limit, $page,$q) {
        
        $offset = ($page-1)*$limit;        
        $this->db->select('id,nombre,estado')
             ->from('ingresos')
             ->group_start()
             ->like('nombre',$q)
             ->group_end()
             ->limit($limit, $offset)
             ->order_by('id', 'DESC');
        $query = $this->db->get();
        return $query->result_array();         
        
    }
    
    public function getInfo() {
        
        $this->db->order_by('nombre', 'ASC');        
        $query = $this->db->get('ingresos');
        return $query->result_array();
        
    }    
    
    public function record_count($q) {

        $this->db->select('id')
             ->from('ingresos');
        if( $q!="" ) {
        $this->db
             ->group_start()
             ->like('nombre', $q)
             ->group_end();
        }
        $this->db->order_by('id', 'DESC');
        
        return $this->db->count_all_results();
        
    }    
    
    public function fetch_data($limit, $page,$q) {
        
        $offset = ($page-1)*$limit;        
        $this->db->select('id,nombre,estado')
             ->from('ingresos')
             ->like('nombre', $q) 
             ->limit($limit, $offset)
             ->order_by('id', 'DESC');
        $query = $this->db->get();
        return $query->result_array(); 
        
    }
    
    public function agregarIngreso($ingreso) {
        
        $this->db->select('*')
             ->from('ingresos')
             ->where('nombre = "'.$ingreso.'"');
        
        $cantidad = $this->db->count_all_results();       
        
        if( $cantidad==0 ) {
            
            $data = array(
                'nombre'  => $ingreso
            );

            if( $this->db->insert('ingresos', $data) ) {
                return "ok";
            }else{
                return "error";
            }
            
        }else{
            return "ya existe";
        }      
        
    }   
    
    public function editarIngreso($ingreso,$new_ingreso) {

        $this->db->set('nombre', $new_ingreso);
        $this->db->where('id', $ingreso);
        
        if( $this->db->update('ingresos') ) {
            return "ok";
        }else{
            return "error";
        }                        
        
    }   
    
    public function editarEstadoIngreso($id) {

        $this->db->select("estado")
             ->from("ingresos")   
             ->where("id",$id);
        $query = $this->db->get();
        $estado_actual = $query->row('estado');
        
        if( $estado_actual==0 ) {
            $this->db->set('estado',1);
            $this->db->where('id',$id);
            $this->db->update('ingresos');            
        }else{
            $this->db->set('estado',0);
            $this->db->where('id',$id);
            $this->db->update('ingresos');            
        }
        
        return "ok";

    }    

}
