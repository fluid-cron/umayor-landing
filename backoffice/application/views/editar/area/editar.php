<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Editar Area</h1>
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
                    <select class="form-control input-md" name="area" id="select-area" >
                        <option value="">Seleccionar Area</option>
                        <?php foreach ($areas as $area): ?>
                        <option value="<?php echo $area['id_area'];?>" <?php if( set_value('area')==$area['id_area'] ) { echo 'selected'; } ?> ><?php echo $area['nombre_area'];?></option>
                        <?php endforeach; ?>   
                    </select>  
                </div>
              </div>
              <div class="form-group form-group-md">
                <label class="col-sm-2 control-label">Nuevo nombre</label>
                <div class="col-sm-10">
                    <input type="text" name="new_area" id="new_area" class="form-control input_new" placeholder="Ingrese aquí el nuevo nombre de la area seleccionada">
                </div>
              </div>                      
              <input class="btn btn-primary pull-right btn-lg" type="submit" value="Submit">
            </form>            
                       
        </div>
    </div>
</div>