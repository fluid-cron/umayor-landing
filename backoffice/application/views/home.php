<div class="container">
    <div class="row">
        <div class="col-md-12" >
            <h1>Registros</h1>          
        </div>    
    </div>
    <div class="row" >
        <div class="col-md-12" >
            
            <div class="visible-sm visible-md visible-lg">
                <form action="<?php echo base_url();?>" class="navbar-form navbar-left pull-right" style="padding-right: 0px;" >
                  <div class="form-group">
                    <input type="text" name="q" value="<?php echo $q;?>" class="form-control" placeholder="Texto a buscar">
                  </div>
                  <button type="submit" class="btn btn-default">Buscar</button>
                  <button type="button" onclick="location.href='<?php echo base_url();?>'" class="btn btn-default">x</button>              
                </form>  
            </div>            
            
            <div class="hidden-sm hidden-md hidden-lg">           
                <form action="<?php echo base_url();?>" class="navbar-form navbar-left" >
                  <div class="form-group">
                    <input type="text" name="q" value="<?php echo $q;?>" class="form-control" placeholder="Texto a buscar">
                  </div>                  
                  <button type="button" onclick="location.href='<?php echo base_url();?>'" class="btn btn-default pull-right">x</button>              
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
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Celular</th>
                    <th>Unidad</th>
                    <th>Area</th>
                    <th>Carrera u otro</th>
                    <th>Origen</th>
                    <th>Fecha</th>
                </tr>
                <?php foreach ($registros as $registro): ?>
                <tr>
                    <td><?php echo $registro['id'];?></td>
                    <td><?php echo $registro['nombre'];?></td>
                    <td><?php echo $registro['email'];?></td>
                    <td><?php echo $registro['celular'];?></td>
                    <td><?php echo $registro['nombre_unidad'];?></td>
                    <td><?php echo $registro['nombre_area'];?></td>
                    <td><?php echo $registro['nombre_carrera'];?></td>
                    <td><?php echo $registro['origen'];?></td>
                    <td><?php echo $registro['fecha'];?></td>
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