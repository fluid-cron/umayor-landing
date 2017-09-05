<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        
    }
    
    public function editarEstadoOpciones() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $this->load->model('Opcion_model','opcion');

            $id = $this->input->post("id");

            if( $id!="" ) {
               $data = $this->opcion->editarEstadoOpciones($id);
               echo $data;
            }else{
                echo "err";
            }

        }else{
            echo "err";
        }
        
    }
    
    public function editarEstadoIngreso() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $this->load->model('Ingreso_model','ingreso');

            $id = $this->input->post("id");

            if( $id!="" ) {
               $data = $this->ingreso->editarEstadoIngreso($id);
               echo $data;
            }else{
                echo "err";
            }

        }else{
            echo "err";
        }
        
    }    
    
    public function exportar() {
        
        $this->load->library('/PHPExcel-1.8/Classes/PHPExcel.php');
        
        $objPHPExcel = new PHPExcel();        
        $this->load->model('Registro_model','registro');
        
        $q = $this->input->get("q");

        $fecha_desde = $this->input->get("desde");
        $fecha_hasta = $this->input->get("hasta");

        if( $fecha_desde!="" && $fecha_hasta!="" ) {

            $fecha_desde_partes = explode("/", $fecha_desde);
            $mysql_fecha_desde = $fecha_desde_partes[2]."-".$fecha_desde_partes[1]."-".$fecha_desde_partes[0];

            $fecha_hasta_partes = explode("/", $fecha_hasta);
            $mysql_fecha_hasta = $fecha_hasta_partes[2]."-".$fecha_hasta_partes[1]."-".$fecha_hasta_partes[0];

        }else{
            $fecha_desde = "";
            $fecha_hasta = "";
            $mysql_fecha_desde = "";
            $mysql_fecha_hasta = "";
        }
        
        $registros = $this->registro->fetch_data_export(trim($q),trim($mysql_fecha_desde),trim($mysql_fecha_hasta));        
        
        $objPHPExcel->getProperties()->setCreator("Universidad Mayor");					

	$objPHPExcel->setActiveSheetIndex(0);

	$objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
	$objPHPExcel->getActiveSheet()->setCellValue('B1', 'Nombre');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Apellido');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Rut');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'Email');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'Celular');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'Unidad');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'Area');
        $objPHPExcel->getActiveSheet()->setCellValue('I1', 'Programa');
        $objPHPExcel->getActiveSheet()->setCellValue('J1', 'Tipo ingreso');        
        $objPHPExcel->getActiveSheet()->setCellValue('K1', 'Consulta');
        $objPHPExcel->getActiveSheet()->setCellValue('L1', 'Origen');
        $objPHPExcel->getActiveSheet()->setCellValue('M1', 'Fecha');
        
	$row = 2;
	foreach($registros as $key) {            

		$col = 0;
		
		$id       = $key["id"];
		$nombre   = $key["nombre"];
                $apellido = $key["apellido"];
                $rut      = $key["rut"];
		$email    = $key["email"];
		$celular  = $key["celular"];
		$unidad   = $key["nombre_unidad"];
		$area     = $key["nombre_area"];
		$programa = $key["nombre_carrera"];
                $origen   = $key["origen"];
                $tipo_ingreso = $key["tipo"];
                $consulta = $key["consulta"];
                $fecha    = $key["fecha"];

		$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col, $row, $id);
		$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $nombre);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $rut);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $apellido);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $email);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $celular);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $unidad);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $area);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $programa);  
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $tipo_ingreso);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $consulta);
                $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $origen);
		$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($col+=1, $row, $fecha);

		$row++;                

	}	      
        
	$objPHPExcel->getActiveSheet()->setTitle('Hoja 1');
	$objPHPExcel->setActiveSheetIndex(0);	

	// Redirect output to a client’s web browser (Excel5)
	header('Content-Type: application/vnd.ms-excel');
	header('Content-Disposition: attachment;filename="registros-'.gmdate('d-M-Y-H-i-s').'.xls"');
	header('Cache-Control: max-age=0');
	// If you're serving to IE 9, then the following may be needed
	header('Cache-Control: max-age=1');
	// If you're serving to IE over SSL, then the following may be needed
	header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
	header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
	header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
	header ('Pragma: public'); // HTTP/1.0
	$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
	$objWriter->save('php://output');               
        
    }
    
    function getEstadoUnidadIngreso() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $this->load->model('Unidad_model','unidad');

            $id = $this->input->post("id");

            if( $id!="" ) {
               $data = $this->unidad->getEstadoUnidadIngreso($id);
            $this->output
                 ->set_content_type('application/json')
                 ->set_output(json_encode($data));  
            }else{
                echo "err";
            }

        }else{
            echo "err";
        }        
             
    }    
    
    function editarEstadoUnidadIngreso() {
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
        
            $this->load->model('Unidad_model','unidad');

            $id = $this->input->post("id");

            if( $id!="" ) {
               $data = $this->unidad->editarEstadoUnidadIngreso($id);
               
            /*$this->output
                 ->set_content_type('application/json')
                 ->set_output(json_encode($data));                  
            */
            }else{
                echo "err";
            }

        }else{
            echo "err";
        }        
             
    }
    
}
