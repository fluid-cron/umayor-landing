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
                    <div class='input-group date' id='datetimepicker6'>
                        <input type='text' name="desde" id="desde" placeholder="Fecha desde" value="<?php echo $fecha_desde;?>" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>       
                    <div class='input-group date' id='datetimepicker7'>
                        <input type='text' name="hasta" id="hasta" placeholder="Fecha hasta" value="<?php echo $fecha_hasta;?>" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>                        
                    <input type="text" name="q" value="<?php echo $q;?>" class="form-control" placeholder="Texto a buscar">
                  </div>
                  <button type="submit" class="btn btn-default">Filtrar</button>
                  <button data-toggle="tooltip" data-placement="top" title="Limpiar" type="button" onclick="location.href='<?php echo base_url();?>'" class="btn btn-default">x</button>              
                  <button data-toggle="tooltip" data-placement="top" title="Exportar" type="button" onclick="location.href='<?php echo base_url();?>data/exportar<?php echo $add;?>'" class="btn btn-default">
                    <span class="glyphicon glyphicon-save-file" aria-hidden="true"></span>
                  </button>              
                </form>  
            </div>            
            
            <div class="hidden-sm hidden-md hidden-lg">           
                <form action="<?php echo base_url();?>" class="navbar-form navbar-left" >
                  <div class="form-group">    
                    <div class='input-group date' id='datetimepicker6'>
                        <input type='text' name="desde" placeholder="Fecha desde" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>       
                    <div class='input-group date' id='datetimepicker7'>
                        <input type='text' name="hasta" placeholder="Fecha hasta" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>                       
                    <input type="text" name="q" value="<?php echo $q;?>" class="form-control" placeholder="Texto a buscar">
                  </div>                  
                  <button type="button" onclick="location.href='<?php echo base_url();?>'" class="btn btn-default pull-right">x</button>              
                  <button type="submit" class="btn btn-default pull-right">Filtrar</button>
                </form>
                <br>  
            </div> 
            
        </div>
    </div>
    <div class="row" >        
        <div class="col-md-12 table-responsive" >            
            <table class="table table-striped table-bordered">
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Rut</th>
                    <th>Email</th>
                    <th>Celular</th>
                    <th>Unidad</th>
                    <th>Area</th>
                    <th>Programa</th>
                    <th>Tipo</th>
                    <th>Mensaje</th>
                    <th>Origen</th>
                    <th>Fecha</th>
                </tr>
                <?php if(count($registros)>0):?>
                    <?php foreach ($registros as $registro): ?>
                    <tr>
                        <td><?php echo $registro['id'];?></td>
                        <td><?php echo $registro['nombre'];?></td>
                        <td><?php echo $registro['apellido'];?></td>
                        <td><?php echo $registro['rut'];?></td>
                        <td><?php echo $registro['email'];?></td>
                        <td><?php echo $registro['celular'];?></td>
                        <td><?php echo $registro['nombre_unidad'];?></td>
                        <td><?php echo $registro['nombre_area'];?></td>
                        <td><?php echo $registro['nombre_carrera'];?></td>
                        <td><?php echo $registro['tipo'];?></td>
                        <td><?php echo $registro['consulta'];?></td>
                        <td><?php echo $registro['origen'];?></td>
                        <td><?php echo date("d-m-Y",strtotime($registro['fecha']));?></td>
                    </tr>
                    <?php endforeach; ?> 
                    <?php else: ?>
                    <tr><td colspan="13" style="text-align: center;" >No existen registros</td></tr>
                    <?php endif; ?>
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