<section class="container-fluid content" >
    <div class="row">
        <div class="col-12">
            <div class="row content2">
                <div class="col-12 col-sm-5 col-md-6 fondo-left p-0 m-0"></div>
                <div class="col-12 col-sm-7 col-md-6 green p-0 m-0">
                    <div class="row p-0 m-0">
                        <div class="col-12 p-0 m-0">
                            <div class="row p-0 m-0">
                                <div class="col-12 form-title pt-2">
                                    <p class="text-white p-0 m-0">Convenios</p>
                                    <p class="text-white p-0 m-0">Universidad Mayor</p>    
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="row p-0 m-0 pl-3">
                        <div class="col-12 bajada p-0 m-0">
                            <p class="pt-2 m-0 text-uppercase hidden-sm-down desktop">
                                Completa el formulario y solicita información sobre los 
                                diferentes convenios y beneficios que puedes acceder para 
                                estudiar en Universidad Mayor.                                
                            </p>                            
                            <p class="pt-2 m-0 text-uppercase hidden-sm-up mobile">
                                Completa el formulario y solicita información sobre los 
                                diferentes convenios y beneficios que puedes acceder para 
                                estudiar en Universidad Mayor.                                
                            </p>
                        </div>
                    </div>
                    <div class="row p-0 m-0">
                        <div class="col-12 p-0 m-0 text-white p-3">
                            
                            <p class="msje-gracias my-5">Solcitud recibida con éxito.</p>
                            
                            <form name="formx" id="formx" action="" method="POST" > 
                                <div class="form-group">
                                    <input type="text" class="form-control" name="nombre" placeholder="Nombre Completo">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="celular" placeholder="Celular">
                                </div>                                
                                <div class="form-group">
                                    <select class="form-control" name="unidades" id="unidades" >
                                      <option value="">Unidad</option>  
                                      <?php foreach($unidades as $unidad): ?>
                                      <?php echo '<option value="'.$unidad["id"].'" >'.$unidad["nombre"].'</option>';?>
                                      <?php endforeach;?>
                                  </select>
                                </div>       
                                <div class="form-group">
                                  <select class="form-control" name="areas" id="areas" >
                                      <option value="">Área</option>                                    
                                  </select>
                                </div>   
                                <div class="form-group">
                                    <select class="form-control" name="carreras" id="carreras" >
                                      <option value="">Programa</option>                                    
                                  </select>
                                </div>                                   
                                <div class="form-group">
                                    <textarea class="form-control" name="consulta" id="consulta" placeholder="Consulta" rows="3"></textarea>
                                </div>                              
                                <button type="submit" value="ENVIAR" class="btn btn-enviar mt-3 p-0 border-0" >
                                    ENVIAR
                                </button>
                            </form>                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>