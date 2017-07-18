<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Editar Carrera u otro</h1>
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
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label" for="formGroupInputLarge">Area</label>
                <div class="col-sm-10">
                    <select class="form-control input-md" name="carrera" id="select-carrera" >
                        <option value="">Seleccionar Carrera u otro</option>
                        <?php foreach ($carreras as $carrera): ?>
                        <option value="<?php echo $carrera['id_carrera'];?>" <?php if( set_value('carrera')==$carrera['id_carrera'] ) { echo 'selected'; } ?> ><?php echo $carrera['nombre_carrera'];?></option>
                        <?php endforeach; ?>   
                    </select>  
                </div>
              </div>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label">Nuevo nombre</label>
                <div class="col-sm-10">
                    <input type="text" name="new_carrera" id="new_carrera" class="form-control input_new" placeholder="Ingrese aquí el nuevo nombre de la carrera seleccionada">
                </div>
              </div>                      
              <input class="btn btn-primary pull-right btn-lg" type="submit" value="Submit">
            </form>            
                       
        </div>
    </div>
</div>