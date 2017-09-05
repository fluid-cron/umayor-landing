<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title><?php echo TITLE;?></title>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('favicon.ico') ?>" />
	<!-- css -->
	<link href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('assets/js/select2/css/select2.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('assets/js/bootstrap-datetimepicker/bootstrap-datetimepicker.css') ?>" rel="stylesheet" type="text/css"/>
	<link href="<?php echo base_url('assets/css/style.css') ?>" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
        
</head>
<body>
        
        <input type="hidden" id="base_url" value="<?php echo base_url(); ?>">
    
	<header id="site-header">          

            <div class="navbar navbar-default" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="<?= base_url() ?>">Backoffice Convenios</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <?php if (isset($_SESSION['username']) && $_SESSION['logged_in'] === true) : ?>
                            <li><a href="<?= base_url('/') ?>">Registros</a></li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Opciones <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-level">
                                    <li><a href="<?= base_url('/opciones') ?>">Listar</a></li>
                                    <li><a href="<?= base_url('/asignar') ?>">Asignar</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Unidad</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= base_url('agregar/unidad') ?>">Agregar</a></li>
                                            <li><a href="<?= base_url('editar/unidad') ?>">Editar</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Area</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= base_url('agregar/area') ?>">Agregar</a></li>
                                            <li><a href="<?= base_url('editar/area') ?>">Editar</a></li>
                                        </ul>
                                    </li>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Carrera</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= base_url('agregar/carrera') ?>">Agregar</a></li>
                                            <li><a href="<?= base_url('editar/carrera') ?>">Editar</a></li>
                                        </ul>
                                    </li>                                    
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tipo ingreso<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?= base_url('ingreso/listar') ?>">Listar</a></li>
                                    <li><a href="<?= base_url('ingreso/agregar') ?>">Agregar</a></li>
                                    <li><a href="<?= base_url('ingreso/editar') ?>">Editar</a></li>                                    
                                </ul>
                            </li>
                            <li><a href="<?= base_url('logout') ?>">Logout</a></li>
                            <?php else : ?>							
                            <!--li><a href="<?= base_url('login') ?>">Login</a></li-->
                            <?php endif; ?>                            
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>             

	</header><!-- #site-header -->

	<main id="site-content" role="main">		
