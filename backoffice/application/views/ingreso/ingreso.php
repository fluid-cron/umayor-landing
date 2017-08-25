<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Listado opciones</h1>
        </div>        
    </div>     
<div class="row" >        
        <div class="col-md-12 table-responsive" >            
            <table class="table table-striped table-bordered">
                    <tr>
                        <th style="width: 10%;">#</th>
                        <th>Nombre</th>
                        <th style="width: 20%;">Estado</th>
                    </tr>                
                    <?php if(count($ingresos)>0):?>
                        <?php foreach ($ingresos as $ingreso): ?>    
                            <tr>
                                <td><?php echo $ingreso['id'];?></td>
                                <td><?php echo $ingreso['nombre'];?></td>
                                <td>
                                    <div class="checkbox">
                                      <label>
                                          <input class="checkbox-estado checkbox-estado-ingreso" type="checkbox" value="<?php echo $ingreso['id'];?>" <?php if($ingreso['estado']==1) { echo 'checked'; } ?> />
                                      </label>
                                    </div>
                                </td> 
                            </tr>
                        <?php endforeach; ?> 
                    <?php else: ?>
                            <tr><td colspan='3' style="text-align:center;">No existen registros</td></tr>
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