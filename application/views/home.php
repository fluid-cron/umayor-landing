<section class="container-fluid content" >
    <div class="row">
        <div class="col-xs-12">
            <div class="row content2">
                <div class="col-xs-12 col-sm-5 col-md-6 fondo-left"></div>
                <div class="col-xs-12 col-sm-7 col-md-6 green">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-12 form-title">
                                    <p class="text-white text-uppercase">Convenios</p>
                                    <p class="text-white text-uppercase">Universidad Mayor</p>    
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 bajada">
                            <p class="hidden-xs desktop">
                                Completa el formulario y solicita información sobre los 
                                diferentes convenios y beneficios que puedes acceder para 
                                estudiar en Universidad Mayor.                                
                            </p>                            
                            <p class="hidden-md hidden-lg mobile">
                                Completa el formulario y solicita información sobre los 
                                diferentes convenios y beneficios que puedes acceder para 
                                estudiar en Universidad Mayor.                                
                            </p>
                        </div>
                    </div>
                    <div class="row row-derecha">
                        <div class="col-xs-12 text-white">
                            
                            <!--p class="msje-gracias">Solcitud recibida con éxito.</p-->
                            <form name="formx" id="formx" action="" method="POST" >
                                <input type="hidden" name="idmedio" value="<?php echo $idmedio;?>" > 
                                <input type="hidden" name="nombre_medio" value="<?php echo $nombre_medio;?>" > 
                                <div class="form-group">
                                    <input type="text" class="form-control" name="nombre" placeholder="Nombre" maxlength="30">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="apellido" placeholder="Apellido" maxlength="30">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="rut" id="rut" placeholder="Rut" maxlength="12">
                                </div>                                
                                <div class="form-group">
                                    <input type="text" class="form-control" name="email" placeholder="Email" maxlength="50">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="celular" placeholder="Celular" maxlength="9" >
                                </div>                                
                                <div class="form-group">
                                    <select class="form-control" name="unidades" id="unidades" >
                                      <option value="">Unidad</option>  
                                      <?php foreach($unidades as $unidad): ?>
                                      <?php echo '<option value="'.$unidad["id"].'" >'.$unidad["nombre"].'</option>';?>
                                      <?php endforeach;?>
                                  </select>
                                </div> 

                                <div class="form-group group-areas">
                                  <select class="form-control" name="areas" id="areas" >
                                      <option value="">Área</option>                                    
                                  </select>
                                </div>   
                                <div class="form-group group-carreras">
                                    <select class="form-control" name="carreras" id="carreras" >
                                      <option value="">Programa</option>                                    
                                  </select>
                                </div>   
                                <div class="form-group group-tipo-ingreso">
                                    <select class="form-control" name="tipo_ingreso" id="tipo_ingreso" >
                                      <option value="">Tipo ingreso</option>    
                                      <?php foreach($tipos_ingresos as $tipo_ingreso): ?>
                                      <?php echo '<option value="'.$tipo_ingreso["id"].'" >'.$tipo_ingreso["nombre"].'</option>';?>
                                      <?php endforeach;?>                                      
                                  </select>
                                </div>                               
                                <div class="form-group group-consulta">
                                    <textarea class="form-control" name="consulta" id="consulta" placeholder="Consulta" rows="3" maxlength="170"></textarea>
                                </div>
                                
                                <button type="submit" value="ENVIAR" class="btn btn-enviar" >
                                    ENVIAR
                                </button>
                                <a href="pdf/politicas.pdf" target="_blank" class="ver-politicas">Ver políticas de privacidad</a>
                                
                            </form>                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>