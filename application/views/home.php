<div id="container">
    <form name="formx" id="formx" action="" method="POST" >           
    
        <input type="text" name="nombre" value="" placeholder="Nombre" />
        <br>
        <input type="text" name="email" value="" placeholder="Email" />
        <br>
        <input type="text" name="celular" value="" placeholder="Celular" />
        <br>

        <select name="unidades" id="unidades">
            <option value="" >Seleccionar unidad</option>
            <?php foreach($unidades as $unidad): ?>
            <?php echo '<option value="'.$unidad["id"].'" >'.$unidad["nombre"].'</option>';?>
            <?php endforeach;?>
        </select>
        <br>
        <select name="areas" id="areas" >
            <option value="" >Seleccionar area</option>
        </select>
        <br>
        <select name="carreras" id="carreras" >
            <option value="" >Seleccionar programa</option>
        </select>    
        <br>
        <textarea name="consulta" id="consulta" rows="4" cols="50" ></textarea>
        <input type="submit" value="Enviar" name="enviar" />
    
    </form>
</div>

