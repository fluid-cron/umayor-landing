<?php
/**
 * Description of app_model
 *
 * @author cronstudio_manuel
 */
class App_model extends CI_Model {
    
    public function getUnidades() {
        
        $this->db->select('u.id_unidad as id,u.nombre_unidad as nombre')
                 ->from('unidades AS u, opciones AS o')
                 ->where('u.id_unidad=o.id_unidad')
                 ->where('o.estado=1')
                 ->group_by('u.nombre_unidad')
                 ->order_by('u.nombre_unidad','asc');
                
        $query = $this->db->get();
        return $query->result_array();
        
    }
  
    public function getAreas($id) {

        $this->db->select('a.id_area as id,a.nombre_area as nombre')
                 ->from('opciones as o,areas as a')
                 ->group_start()
                 ->where('o.id_unidad='.$id)
                 ->where('o.id_area=a.id_area')
                 ->where('o.estado=1')
                 ->group_end()
                 ->group_by('a.nombre_area')
                 ->order_by('a.nombre_area','asc');

        $query = $this->db->get();
        return $query->result_array();

    }
    
    public function getCarreras($id_unidad,$id_area) {

        $this->db->select('c.id_carrera as id,c.nombre_carrera as nombre')
                 ->from('opciones as o,carreras_cursos_programas as c')
                 ->group_start()
                 ->where('o.id_unidad='.$id_unidad)
                 ->where('o.id_area='.$id_area)
                 ->where('o.id_carrera=c.id_carrera')
                 ->where('o.estado=1')
                 ->group_end()
                 ->group_by('c.nombre_carrera')
                 ->order_by('c.nombre_carrera','asc');

        $query = $this->db->get();
        //echo $this->db->last_query();
        return $query->result_array();

    }
    
    public function getTiposIngreso() {
        $this->db->select('*')
                  ->from('ingresos')
                  ->where('estado',1)
                  ->order_by('nombre','asc');
        $query = $this->db->get();
        return $query->result_array();
    }
    
    public function getEstadoUnidadIngreso($id) {
        $query = $this->db->get_where('unidades', array('id_unidad' => $id));
        return $query->row();
    }    

    public function getNombreMedioById($id) {
        $query = $this->db->get_where('medios', array('idmedios' => $id));
        return $query->row()->nombre;
    }        

}
