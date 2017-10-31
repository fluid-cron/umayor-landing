<?php
/**
 * Description of registro_model
 *
 * @author cronstudio_manuel
 */
class Registro_model extends CI_Model {
    
    public $nombre;
    public $apellido;
    public $rut;
    public $email;
    public $celular;
    public $id_unidad;
    public $id_area;
    public $id_carrera;
    public $tipo_ingreso;
    public $consulta;
    public $origen = "desktop";
    public $medio;
    public $nombre_medio;
    public $fecha;
    
    public function guardarFormulario() {
        
        if ($this->agent->is_mobile()) {
            $this->origen = "mobile";
        }
        
        $this->nombre       = $this->input->post("nombre");
        $this->apellido     = $this->input->post("apellido");
        $this->rut          = $this->input->post("rut");
        $this->email        = $this->input->post("email");
        $this->celular      = $this->input->post("celular");
        $this->id_unidad    = $this->input->post("unidades");
        $this->id_area      = $this->input->post("areas");
        $this->id_carrera   = $this->input->post("carreras");   
        $this->tipo_ingreso = $this->input->post("tipo_ingreso");   
        $this->consulta     = $this->input->post("consulta");
        $this->medio        = $this->input->post("idmedio");
        $this->nombre_medio = $this->input->post("nombre_medio");
        $this->fecha        = date("Y-m-d H:i:s");
        
        if( $this->db->insert('registros',$this) ) {
            return "ok";
        }else{
            return "error";
        }
        
    }
    
    public function check() {

        $unidad  = $this->input->post("unidades");
        $area    = $this->input->post("areas");
        $carrera = ($this->input->post("carreras")=="" ? 0 : $this->input->post("carreras"));     
        
        $this->db->select("*")
                 ->from("opciones o")
                 ->where('o.id_unidad='.$unidad)
                 ->where('o.id_area='.$area)
                 ->where('o.id_carrera='.$carrera)
                 ->where('o.estado=1');
        
        return ( $this->db->count_all_results() > 0 ? "existe" : "no existe" );       
        
    }

}
