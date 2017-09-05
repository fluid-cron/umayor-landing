<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Agregar Unidad</h1>
        </div>        
    </div>
    <?php if (validation_errors()) : ?>
            <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                            <?= validation_errors() ?>
                    </div>
            </div>
    <?php endif; ?>    
    <?php if (isset($error)) : ?>
            <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                            <?= $error ?>
                    </div>
            </div>
    <?php endif; ?>    
    <div class="row" >        
        <div class="col-md-12" > 

            <!--form class="form-horizontal"-->
             <?php $attributes = array('class' => 'form-horizontal', 'id' => 'formx'); ?>
              <?php echo form_open('',$attributes) ?>

                <div class="form-group">
                    <label for="inputUnidad" class="col-sm-2 control-label">Unidad</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputUnidad" name="unidad" placeholder="Ingresa aquí la unidad">
                    </div>
                </div>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label">Tipo ingreso (habilitado/deshabilitado)</label>
                <div class="col-sm-10">
                    <div class="checkbox">
                      <label>
                          <input id="estado_tipo_ingreso" name="estado_tipo_ingreso" data-toggle="tooltip" data-placement="top" data-original-title="Mostrar campo de tipo ingreso en el formulario" class="checkbox-estado checkbox-estado-ingreso" type="checkbox" value="1" />
                      </label>
                    </div>
                </div>
              </div>              
             
              <input class="btn btn-primary pull-right btn-lg" type="submit" value="Guardar">
            </form>            
                       
        </div>
    </div>
</div>