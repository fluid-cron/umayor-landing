<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title><?php echo TITLE;?></title>

	<!-- css -->
	<link href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('assets/js/select2/css/select2.css') ?>" rel="stylesheet">
	<link href="<?php echo base_url('assets/css/style.css') ?>" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    
	<header id="site-header">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<?= base_url() ?>">Backoffice Convenios</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<?php if (isset($_SESSION['username']) && $_SESSION['logged_in'] === true) : ?>
                                                        <li><a href="<?= base_url('/') ?>">Registros</a></li>  
                                                        <li><a href="<?= base_url('/opciones') ?>">Opciones</a></li>
                                                        <li><a href="<?= base_url('/asignar') ?>">Asignar</a></li>
                                                        <li class="dropdown">
                                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Agregar <span class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="<?= base_url('agregar/unidad') ?>">Unidad</a></li>
                                                                <li><a href="<?= base_url('agregar/area') ?>">Area</a></li>
                                                                <li><a href="<?= base_url('agregar/carrera') ?>">Carrera</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="<?= base_url('logout') ?>">Logout</a></li>
						<?php else : ?>							
							<li><a href="<?= base_url('login') ?>">Login</a></li>
						<?php endif; ?>
					</ul>
				</div><!-- .navbar-collapse -->
			</div><!-- .container-fluid -->
		</nav><!-- .navbar -->
	</header><!-- #site-header -->

	<main id="site-content" role="main">
		
		<?php /*if (isset($_SESSION)) : ?>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<?php var_dump($_SESSION); ?>
					</div>
				</div><!-- .row -->
			</div><!-- .container -->
		<?php endif; */?>
		
