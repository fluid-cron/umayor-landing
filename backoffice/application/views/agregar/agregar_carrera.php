<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Asignar Opciones</h1>
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
                <label class="col-sm-2 control-label" for="formGroupInputLarge">Unidad</label>
                <div class="col-sm-10">
                    <select class="form-control input-md" name="unidad" >
                        <option value="">Seleccionar Unidad</option>
                        <?php foreach ($unidades as $unidad): ?>
                        <option value="<?php echo $unidad['id_unidad'];?>" <?php if( set_value('unidad')==$unidad['id_unidad'] ) { echo 'selected'; } ?> ><?php echo ucwords(strtolower($unidad['nombre_unidad']));?></option>
                        <?php endforeach; ?>   
                    </select>  
                </div>
              </div>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label" for="formGroupInputLarge">Area</label>
                <div class="col-sm-10">
                    <select class="form-control input-md" name="area">
                        <option value="">Seleccionar Area</option>
                        <?php foreach ($areas as $area): ?>
                        <option value="<?php echo $area['id_area'];?>" <?php if( set_value('area')==$area['id_area'] ) { echo 'selected'; } ?>><?php echo ucwords(strtolower($area['nombre_area']));?></option>
                        <?php endforeach; ?>  
                    </select>  
                </div>
              </div>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label" for="formGroupInputLarge">Carrera u otro</label>
                <div class="col-sm-10">
                    <select class="form-control input-md" name="carrera">
                        <option value="">Seleccionar Carrera u Otro</option>
                        <?php foreach ($carreras as $carrera): ?>
                        <option value="<?php echo $carrera['id_carrera'];?>" <?php if( set_value('carrera')==$carrera['id_carrera'] ) { echo 'selected'; } ?>><?php echo ucwords(strtolower($carrera['nombre_carrera']));?></option>
                        <?php endforeach; ?>  
                    </select>  
                </div>
              </div>               
              <input class="btn btn-primary pull-right btn-lg" type="submit" value="Submit">
            </form>            
                       
        </div>
    </div>
</div>