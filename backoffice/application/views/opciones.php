<div class="container">
    <div class="row">
        <div class="col-md-12" >
            <h1>Editar Opciones <small>habilitar o deshabilitar</small></h1>          
        </div>    
    </div>
    <div class="row" >
        <div class="col-md-12" >
            
            <div class="visible-sm visible-md visible-lg">
                <form action="<?php echo base_url().'opciones/';?>" class="navbar-form navbar-left pull-right" style="padding-right: 0px;" >
                  <div class="form-group">
                    <input type="text" name="q" value="<?php echo $q;?>" class="form-control" placeholder="Texto a buscar">
                  </div>
                  <button type="submit" class="btn btn-default">Buscar</button>
                  <button type="button" onclick="location.href='<?php echo base_url().'opciones/';?>'" class="btn btn-default">x</button>              
                </form>  
            </div>            
            
            <div class="hidden-sm hidden-md hidden-lg">           
                <form action="<?php echo base_url().'opciones/';?>" class="navbar-form navbar-left" >
                  <div class="form-group">
                    <input type="text" name="q" value="<?php echo $q;?>" class="form-control" placeholder="Texto a buscar">
                  </div>                  
                  <button type="button" onclick="location.href='<?php echo base_url().'opciones/';?>'" class="btn btn-default pull-right">x</button>              
                  <button type="submit" class="btn btn-default pull-right">Buscar</button>
                </form>
                <br>  
            </div> 
            
        </div>
    </div>
    <div class="row" >        
        <div class="col-md-12" >            
            <table class="table table-striped table-bordered">
                <tr>
                    <th style="width: 5%;" >#</th>
                    <th style="width: 30%;">Unidad</th>
                    <th style="width: 30%;">Area</th>
                    <th style="width: 30%;">Carrera u otro</th>
                    <th style="width: 5%;">Estado</th>
                </tr>
                <?php foreach ($opciones as $opcion): ?>
                <tr>
                    <td><?php echo $opcion['id'];?></td>
                    <td><?php echo $opcion['unidad'];?></td>
                    <td><?php echo $opcion['area'];?></td>
                    <td><?php echo $opcion['carrera'];?></td>
                    <td>
                        <div class="checkbox">
                          <label>
                              <input class="checkbox-estado" type="checkbox" value="<?php echo $opcion['id'];?>" <?php if($opcion['estado']==1) { echo 'checked'; } ?> >
                          </label>
                        </div>
                    </td>
                </tr>
                <?php endforeach; ?>           
            </table>            
        </div>
        <div class="col-md-12">            
            <nav aria-label="Page navigation">
              <ul class="pagination pull-right">
                <?php foreach ($links as $link) {
                    echo $link;
                } ?>            
              </ul>
            </nav>                                  
            <br><br><br>
        </div>        
    </div>
</div>