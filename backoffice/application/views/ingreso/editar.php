<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Editar Ingresos</h1>
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

             <?php $attributes = array('class' => 'form-horizontal', 'id' => 'form-ux'); ?>
              <?php echo form_open('',$attributes) ?>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label" for="formGroupInputLarge">Ingreso</label>
                <div class="col-sm-10">
                    <select class="form-control input-md" name="ingreso" id="select-unidad" >
                        <option value="">Seleccionar Ingreso</option>
                        <?php foreach ($ingresos as $ingreso): ?>
                        <option value="<?php echo $ingreso['id'];?>" <?php if( set_value('nombre')==$ingreso['id'] ) { echo 'selected'; } ?> ><?php echo $ingreso['nombre'];?></option>
                        <?php endforeach; ?>   
                    </select>  
                </div>
              </div>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label">Nuevo nombre</label>
                <div class="col-sm-10">
                    <input type="text" name="new_nombre" id="new_nombre" class="form-control input_new" placeholder="Ingrese aquí el nuevo nombre de el ingreso seleccionado">
                </div>
              </div>                      
              <input class="btn btn-primary pull-right btn-lg" type="submit" value="Guardar">
            </form>            
                       
        </div>
    </div>
</div>