<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="container">
	<div class="row">
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
		<div class="col-md-12">
			<div class="page-header">
				<h1>Registro de nuevo usuario</h1>
			</div>
			<?= form_open() ?>
				<div class="form-group">
					<label for="username">Nombre de usuario</label>
					<input type="text" class="form-control" id="username" name="username" placeholder="Enter a username">
					<p class="help-block">Al menos 4 caracteres, solo letras y números</p>
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
					<p class="help-block">Una dirección de correo válida</p>
				</div>
				<div class="form-group">
					<label for="password">Contraseña</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="Enter a password">
					<p class="help-block">Al menos 6 caracteres</p>
				</div>
				<div class="form-group">
					<label for="password_confirm">Confirmar contraseña</label>
					<input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="Confirm your password">
					<p class="help-block">Debe conincidir la contraseña</p>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-default" value="Registrar">
				</div>
                                <br>
			</form>
		</div>
	</div><!-- .row -->
</div><!-- .container -->