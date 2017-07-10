<div class="container">
    <div class="row">
        <div class="col-md-12 page-header" >
            <h1>Editar Opciones <small>habilitar o deshabilitar</small></h1>
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
    </div>
</div>