<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Agregar Area</h1>
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
                    <label for="inputUnidad" class="col-sm-2 control-label">Area</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputUnidad" name="area" placeholder="Ingresa aquí la area">
                    </div>
                </div>
             
              <input class="btn btn-primary pull-right btn-lg" type="submit" value="Guardar">
            </form>            
                       
        </div>
    </div>
</div>